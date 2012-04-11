#
#  Taken in large from github.com/dennisschoenmakers/etmodel and simplified
# 

require 'rubygems'
require 'httparty'

class Connection
  include HTTParty
  base_uri 'beta.et-engine.com/api/v2/api_scenarios'

  attr_accessor :api_session_id, :scenario, :settings

  def initialize(scenario = nil, settings = nil)
    @scenario = scenario
    @settings = settings
  end

  def queries
    scenario.queries
  end

  def inputs
    scenario.inputs
  end

  def fetch_session_id
    response = self.class.get "/new.json", query: ({'settings' => @settings} if @settings)
    result = response["api_scenario"]["id"] rescue "Error fetching api_session_id. Got response:\n\n #{response}"
    @api_session_id = result
  end

  def results
    @results = execute!
  end

  def parse_results
    parsed_results = Hash.new
    queries.each do |query|
      parsed_results[query] = parse_result(query)
    end
    parsed_results
  end

  def parse_result(key)
    data = results[key] || raise("key #{key} unknown in #{results.inspect}")
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
    url = "/#{session_id}.json"
    request_params = { result: scenario.queries.uniq.flatten, input: scenario.inputs }
    response = self.class.get(url, :query => request_params)
    @results = response["result"]
  end
end