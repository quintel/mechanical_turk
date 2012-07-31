require 'rubygems'
require 'yaml'
require 'httparty'

class Connection
  include HTTParty

  attr_accessor :api_session_id, :scenario, :settings

  def initialize(scenario = nil, settings = nil)
    @scenario = scenario
    @settings = settings
  end

  def fetch_session_id
    response = self.class.get "/new.json", query: ({'settings' => @settings} if @settings)
    result = response["scenario"]["id"] rescue "Error fetching api_session_id. Got response:\n\n #{response.inspect}"
    @api_session_id = result
  end

  def results
    execute!(scenario.current_inputs)
  end
  
  def previous_results
    execute!(scenario.previous_inputs)
  end
  
  SERVER_ADDRESS = YAML.load_file(File.expand_path('../../config.yml', __FILE__))['server_addr'] rescue "http://beta.et-engine.com"
  
  base_uri SERVER_ADDRESS + '/api/v2/api_scenarios'

#######
private
#######

  def execute!(inputs = nil)
    return [] if scenario.queries.nil? || scenario.queries.empty?
    results = get_response(inputs)["result"]
    parse(results)
  end

  def get_response(inputs = nil)
    session_id = api_session_id || fetch_session_id
    url = "/#{session_id}.json"
    request_params = { result: scenario.queries, reset: true }
    request_params[:input] = inputs if inputs
    response = self.class.get(url, :query => request_params)
  end

  def parse(results)
    parsed_results = Hash.new
    results.each do |key, data|
      parsed_results[key] = {
        data[0][0] => data[0][1].kind_of?(Array) ? data[0][1][0].to_f : data[0][1].to_f,
        data[1][0] => data[1][1].kind_of?(Array) ? data[1][1][0].to_f : data[1][1].to_f,
      }
    end
    parsed_results
  end

end
