require 'rubygems'
require 'yaml'
require 'httparty'

module Turk

class Connection

  SERVER_ADDRESS = ENV['SERVER'] || YAML.load_file(File.expand_path('../../config.yml', __FILE__))['server_addr'] rescue "http://beta.et-engine.com"

  include HTTParty
  base_uri SERVER_ADDRESS + '/api/v3/scenarios'
  headers "User-Agent" => "mechanical turk", "Content-length" => "0"

  attr_accessor :api_session_id, :scenario, :settings

  def initialize(scenario = nil, settings = nil)
    @scenario = scenario
    @settings = settings
    @autobalance = settings.delete(:autobalance) if settings
  end

  def fetch_session_id
    request_params = {source: "Mechanical Turk"}
    request_params.merge!(@settings) if @settings
    response = self.class.post ".json", query: { scenario: request_params }
    begin
      if response["id"].is_a?(Integer)
        @api_session_id = response["id"]
      else
        raise(MissingID, "Error fetching api_session_id. Got response:\n\n #{response.inspect}")
      end
    end
  end

  def results
    execute!(scenario.current_inputs)
  end

  def previous_results
    execute!(scenario.previous_inputs)
  end

#######
private
#######

  def execute!(inputs = nil)
    return [] if scenario.queries.nil? || scenario.queries.empty?
    reponse = get_response(inputs)
    gqueries = reponse["gqueries"]
    raise(Turk::MissingReponse, reponse) unless gqueries
    raise Turk::MissingQuery if gqueries.any?{|key, attr|key == "unknown"}
    gqueries
  end

  def get_response(inputs = nil)
    session_id = api_session_id || fetch_session_id
    url = "/#{session_id}.json"
    request_params = {
      gqueries: scenario.queries,
      source: "Mechanical Turk",
      reset: true,
      scenario: {
      }
    }
    request_params[:autobalance] = true if @autobalance
    request_params[:scenario][:user_values] = inputs if inputs
    self.class.put(url, query: request_params)
  end

end

end
