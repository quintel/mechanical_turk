# frozen_string_literal: true

require 'singleton'
require 'yaml'
require_relative 'preset'

module Turk
  class UnknownPresetError < StandardError
    def initialize(key)
      super("No preset scenario ids specified for #{key}")
    end
  end

  # Sets up the initial cache of presets for the yaml
  # Scenarios are setup as Turk scenarios.
  # Uses Singleton with eager initialization for thread-safety.
  class PresetCache
    include Singleton

    PRESET_SCENARIOS_PATH = File.expand_path('../preset_scenarios.yml', __dir__)

    def self.presets
      instance.presets
    end

    def self.key?(key)
      instance.presets.key?(key)
    end

    def initialize
      @presets = raw_scenarios.transform_keys(&:to_sym).transform_values do |scenarios|
        scenarios.map { |s| Turk::Preset.new(s['id']) }
      end
    end

    attr_reader :presets

    private

    def raw_scenarios
      YAML.load_file(PRESET_SCENARIOS_PATH)
    end
  end

  # A collection of Presets to be looping tests over. Specific test-groups of
  # scenarios can be added to preset_scenarios.yml.
  class PresetCollection
    include Enumerable

    attr_reader :presets

    def initialize(presets)
      @presets = presets
    end

    def each(&block)
      @presets.each(&block)
    end

    class << self
      # Public: Returns a collection of Presets based on the scenarios
      # specified by the given key in preset_scenarios.yml.
      #
      # key,      A key for a scenario test-groups, this key should be present in
      #           preset_scenarios.yml.
      #
      # Returns a PresetCollection
      def from_key(key)
        ensure_valid_key(key)

        PresetCollection.new(PresetCache.presets[key])
      end

      # Public: Returns a collection of Presets based on the scenarios
      # specified by the given keys in preset_scenarios.yml.
      #
      # *keys,    One or multiple keys for scenario test-groups, these keys should
      #           be present in preset_scenarios.yml.
      #
      # Returns a PresetCollection
      def from_keys(*keys)
        PresetCollection.new(
          keys.flat_map do |key|
            ensure_valid_key(key)
            PresetCache.presets[key]
          end
        )
      end

      # Public: Returns the collection of all Presets specified in
      # preset_scenarios.yml.
      #
      # Returns a PresetCollection
      def all
        PresetCollection.new(unique_preset_scenarios)
      end

      private

      def ensure_valid_key(key)
        raise UnknownPresetError.new(key) unless PresetCache.key? key
      end

      def unique_preset_scenarios
        PresetCache.presets.flat_map { |_, scenarios| scenarios }.uniq
      end
    end
  end
end
