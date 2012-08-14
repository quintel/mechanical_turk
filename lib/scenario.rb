require_relative 'connection'
require_relative 'result'

module Turk

#DEBT: move custom Errors to own file
class MissingQuery < StandardError; end
class NoConnection < StandardError; end
class MissingReponse < StandardError; end
class MissingID < StandardError; end

class Scenario

  attr_reader :settings, :connection, :inputs, :results

  def initialize(settings = {area_code: 'nl', end_year: 2040})
    @results = {}
    @inputs = [{}]
    @settings = settings
    @connection = Connection.new(self, settings)
    @touched = false
  end

  def current_inputs
    inputs.last
  end

  def previous_inputs
    inputs[-2]
  end

  def result(key)
    add_result(key) unless @results[key]
    refresh! if touched?
    @results[key]
  end

  def track(keys)
    keys.each { |key| add_result(key) }
  end

  def queries
    @results.keys
  end

  def refresh!
    @touched = false
    connection.results.each do |key, hash|
      result(key).update(hash["present"], hash["future"])
    end
    connection.previous_results.each do |key, hash|
      result(key).update_previous(hash["future"])
    end
  end

  def touched?
    @touched
  end

  def untouched?
    !touched?
  end

  ## short-cuts

  SHORT_CUTS = { co2:            "total_co2_emissions",
                 primary_demand: "dashboard_energy_demand_primary_of_final",
                 import:         "dashboard_energy_import_netto",
                 footprint:      "dashboard_bio_footprint",
                 costs:          "dashboard_total_costs",
                 renewables:     "dashboard_renewability"
               }

  def method_missing(name, *args, &block)
    if name.to_s.include?("=")
      send(:set_input, name.to_s.delete("="), args.first)
    else
      name = SHORT_CUTS[name] || name
      send(:result, name.to_s)
    end
  end

#######
private
#######

  def set_input(key, value)
    return if @inputs.last[key] == value rescue nil #do nothing if nothing changed
    if untouched?
      new_inputs = {}
      new_inputs.merge!(@inputs.last) if @inputs.last
      new_inputs[key] = value
      @inputs << new_inputs
    else
      @inputs.last[key] = value
    end
    @touched = true
  end
  

  def add_result(key)
    @results[key] = Result.new(key, self)
    @touched = true
  end

end

end
