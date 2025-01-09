# frozen_string_literal: true

require_relative 'preset'

module Turk
  class UnknownPresetError < StandardError
    def initialize(key)
      super("No preset scenario ids specified for #{key}")
    end
  end

  # A collection of Presets to be looping tests over. Specific test-groups of
  # scenarios can be added to PRESET_SCENARIOS.
  class PresetCollection
    include Enumerable

    attr_reader :presets

    PRESET_SCENARIOS = {
      nvdt: [1329317, 1329318, 1329319, 1329320],
      ii3050: [1370826, 1370828, 1370830, 1370832],
      ii3050v2: [2402168,2402170,2402171,2402166],
      scenario_collection: [1438014, 1438773, 1438780, 1438836],
      merit_off: [1438775, 1438838]
    }

    def initialize(presets)
      @presets = presets
    end

    def each(&block)
      @presets.each(&block)
    end

    class << self
      # Public: Creates and returns a new collection of Presets based on the
      # scenarios specified by the given key in PRESET_SCENARIOS.
      #
      # key,      A key for a scenario test-groups, this key should be present in
      #           PRESET_SCENARIOS.
      #
      # Returns a PresetCollection
      def from_key(key)
        ensure_valid_key(key)

        PresetCollection.new(PRESET_SCENARIOS[key].map { |id| Turk::Preset.new(id) })
      end

      # Public: Creates and returns a new collection of Presets based on the
      # scenarios specified by the given keys in PRESET_SCENARIOS.
      #
      # *keys,    One or multiple keys for scenario test-groups, these keys should
      #           be present in PRESET_SCENARIOS.
      #
      # Returns a PresetCollection
      def from_keys(*keys)
        scenarios = keys.flat_map do |key|
          ensure_valid_key(key)
          PRESET_SCENARIOS[key]
        end

        PresetCollection.new(scenarios.map { |id| Turk::Preset.new(id) })
      end

      # Public: Creates and returns a new collection of Presets containing all
      # scenarios specified in PRESET_SCENARIOS.
      #
      # Returns a PresetCollection
      def all
        PresetCollection.new(unique_preset_scenarios.map { |id| Turk::Preset.new(id) })
      end

      private

      def ensure_valid_key(key)
        raise UnknownPresetError.new(key) unless PRESET_SCENARIOS.key? key
      end

      def unique_preset_scenarios
        PRESET_SCENARIOS.flat_map { |_, scenarios| scenarios }.uniq
      end
    end
  end
end
