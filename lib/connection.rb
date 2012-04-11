#
#  Taken in large from github.com/dennisschoenmakers/etmodel and simplified
# 

require 'rubygems'
require 'httparty'

class Connection
  include HTTParty
  base_uri 'http://et-engine.com/api/v2' #needs to be adaptable

  attr_accessor :api_session_id, :scenario, :settings

  def initialize(scenario, settings = nil)
    @scenario = scenario
    @settings = settings
  end

  # Short Cuts ---------------------
  
  def queries
    scenario.queries
  end
  
  def sliders
    scenario.sliders
  end

  # Short Cuts ---------------------

  def fetch_session_id
    response = self.class.get "/api_scenarios/new.json", query: (settings if settings)
    result = response["api_scenario"]["id"] rescue "Error fetching api_session_id. Got response:\n\n #{response}"
    @api_session_id = result
  end

  # no caching, always fresh data
  def results!
    @results = execute!
  end

  # caching results
  def results
    @results ||= execute!
  end

  def parse_results
    parsed_results = Hash.new
    queries.each do |query|
      parsed_results[query] = parse_result(query)
    end
    parsed_results
  end

  def parse_result(key)
    data = results[key] || raise("key unknown in #{results.inspect}")
    if data.kind_of?(Array) && data.size == 2
      parse_pair data
    else
      parse_single_value data
    end
  end

  def got_result?(q)
    @results && @results[q]
  end

  # Data is returned in different ways. Sometimes it is enclosed
  # in an array:
  # ruby-1.9.2-p180 :011 > Current.gql.query "present:V(1.0)"
  # => [1.0]
  #
  # Sometimes not:
  # Current.gql.query "present:NIL()"
  # => nil
  def parse_single_value(data)
    if data.is_a?(Array)
      data[0].to_f
    else
      data.to_f
    end
  end

  def parse_pair(data)
    {
      data[0][0] => data[0][1].kind_of?(Array) ? data[0][1][0].to_f : data[0][1].to_f,
      data[1][0] => data[1][1].kind_of?(Array) ? data[1][1][0].to_f : data[1][1].to_f,
    }
  end  

  def execute!
    return [] if queries.nil? || queries.empty?
    session_id = api_session_id || fetch_session_id
    url = "/api_scenarios/#{session_id}.json"
    request_params = { result: scenario.queries.uniq.flatten, inputs: scenario.sliders }
    response = self.class.get(url, :query => request_params)
    @results = response["result"]
  end
end