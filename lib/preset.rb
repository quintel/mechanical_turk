require_relative 'scenario'

module Turk
  class ImmutableScenarioError < StandardError
    def message
      'Turk::Preset is read-only, you may not make changes'
    end
  end

  # Creates a new scenario based on a preset or scenario ID. Due to Scenario
  # resetting all scenarios to the default values prior to sending a query, and
  # that ETE doesn't reset to the original preset values, Turk::Preset is
  # immutable and may not modify inputs.
  class Preset < Scenario
    attr_reader :original_scenario_id

    def initialize(id)
      @original_scenario_id = id
      super(scenario_id: id, reset: false)
    end

    private

    def set_input(*args)
      fail ImmutableScenarioError
    end
  end
end
