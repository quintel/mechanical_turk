require 'rubygems'
require 'yaml'
require 'httparty'

module Turk

class Connection
  include HTTParty

  attr_accessor :api_session_id, :scenario, :settings

  def initialize(scenario = nil, settings = nil)
    @scenario = scenario
    @settings = settings
  end

  def fetch_session_id
    request_params = {source: "Mechanical Turk"}
    request_params.merge!(@settings) if @settings
    response = self.class.post ".json", query: { scenario: request_params }
    begin
      if response["id"].is_a?(Integer)
        @api_session_id = response["id"]
      else
        raise "Error fetching api_session_id. Got response:\n\n #{response.inspect}"
      end
    end
  end

  def results
    execute!(scenario.current_inputs)
  end

  def previous_results
    execute!(scenario.previous_inputs)
  end

  SERVER_ADDRESS = YAML.load_file(File.expand_path('../../config.yml', __FILE__))['server_addr'] rescue "http://beta.et-engine.com"

  base_uri SERVER_ADDRESS + '/api/v3/scenarios'

#######
private
#######

  def execute!(inputs = nil)
    return [] if scenario.queries.nil? || scenario.queries.empty?
    response = get_response(inputs)["gqueries"]
    raise Turk::MissingQuery if response.any?{|key, attr|key == "unknown"}
    response
  end

  def get_response(inputs = nil)
    session_id = api_session_id || fetch_session_id
    url = "/#{session_id}.json"
    request_params = {
      gqueries: scenario.queries,
      source:   "Mechanical Turk",
      reset: true,
      scenario: {
      }
    }
    request_params[:scenario][:user_values] = inputs if inputs
    response = self.class.put(url, query: request_params) || raise(Turk::NoConnection, "I did not get a proper connection")
  end


end

end
