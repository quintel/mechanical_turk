# frozen_string_literal: true

require 'yaml'
require_relative 'preset'

module Turk
  class UnknownPresetError < StandardError
    def initialize(key)
      super("No preset scenario ids specified for #{key}")
    end
  end

  # A collection of Presets to be looping tests over. Specific test-groups of
  # scenarios can be added to preset_scenarios.yml.
  class PresetCollection
    include Enumerable

    attr_reader :presets

    PRESET_SCENARIOS_PATH = File.expand_path('../../preset_scenarios.yml', __FILE__)

    def self.preset_scenarios
      @preset_scenarios ||= begin
        yaml = YAML.load_file(PRESET_SCENARIOS_PATH)
        yaml.transform_keys(&:to_sym).transform_values do |scenarios|
          scenarios.map { |s| s['id'] }
        end
      end
    end

    def initialize(presets)
      @presets = presets
    end

    def each(&block)
      @presets.each(&block)
    end

    class << self
      # Public: Creates and returns a new collection of Presets based on the
      # scenarios specified by the given key in preset_scenarios.yml.
      #
      # key,      A key for a scenario test-groups, this key should be present in
      #           preset_scenarios.yml.
      #
      # Returns a PresetCollection
      def from_key(key)
        ensure_valid_key(key)

        PresetCollection.new(preset_scenarios[key].map { |id| Turk::Preset.new(id) })
      end

      # Public: Creates and returns a new collection of Presets based on the
      # scenarios specified by the given keys in preset_scenarios.yml.
      #
      # *keys,    One or multiple keys for scenario test-groups, these keys should
      #           be present in preset_scenarios.yml.
      #
      # Returns a PresetCollection
      def from_keys(*keys)
        scenarios = keys.flat_map do |key|
          ensure_valid_key(key)
          preset_scenarios[key]
        end

        PresetCollection.new(scenarios.map { |id| Turk::Preset.new(id) })
      end

      # Public: Creates and returns a new collection of Presets containing all
      # scenarios specified in preset_scenarios.yml.
      #
      # Returns a PresetCollection
      def all
        PresetCollection.new(unique_preset_scenarios.map { |id| Turk::Preset.new(id) })
      end

      private

      def ensure_valid_key(key)
        raise UnknownPresetError.new(key) unless preset_scenarios.key? key
      end

      def unique_preset_scenarios
        preset_scenarios.flat_map { |_, scenarios| scenarios }.uniq
      end
    end
  end
end
