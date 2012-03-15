#
#  Copied in large from github.com/dennisschoenmakers/etmodel
# 

require 'rubygems'
require 'httparty'

class Connection
  include HTTParty
  base_uri 'http://et-engine.com/api/v2'

  attr_accessor :queries, :api_session_id

  def initialize(scenario = nil, settings = nil)
    @queries = []
    @scenario = scenario
    @settings = settings
  end

  def fetch_session_id
    response = self.class.get "/api_scenarios/new.json", query: (settings if @settings)
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

  # DEBT: deal with falsy values
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

  # returns data in this format: {2010 => 1.0, 2040 => 1.0}
  #
  # ruby-1.9.2-p180 :006 > Current.gql.query "V(1.0)"
  # => [[2010, [1.0]], [2040, [1.0]]]  # enclosed in an array
  #
  # ruby-1.9.2-p180 :004 > Current.gql.query "Q(policy_not_shown)"
  # => [[2010, 0.6045053247669468], [2040, 0.6045053247669468]] # not!
  #
  # DEBT: deal with queries that return arrays or strings!
  def parse_pair(data)
    {
      data[0][0] => data[0][1].kind_of?(Array) ? data[0][1][0].to_f : data[0][1].to_f,
      data[1][0] => data[1][1].kind_of?(Array) ? data[1][1][0].to_f : data[1][1].to_f,
    }
  rescue
    false
  end

  def parse_result(key)
    data = results[key]
    return nil unless data
    if data.kind_of?(Array) && data.size == 2
      return parse_pair(data)
    else
      return parse_single_value(data)
    end
  rescue
    nil
  end
  
  def parse_results
    results = Hash.new
    @queries.each do |query|
      results[query] = parse_result(query)
    end
    results
  end

  def execute!
    q = queries.uniq.flatten
    return [] if q.nil? || q.empty?
    session_id = api_session_id || fetch_session_id
    url = "/api_scenarios/#{session_id}.json"
    request_params = { result: q }
    response = self.class.get(url, :query => request_params)
    @results = response["result"]
  end
end