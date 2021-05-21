# frozen_string_literal: true

require_relative 'preset'

module Turk
  class UnknownPresetError < StandardError
    def initialize(key)
      super("No preset scenario ids specified for #{key}")
    end
  end

  # Something about this class
  class PresetCollection
    include Enumerable

    attr_reader :presets

    PRESET_SCENARIOS = {
      nvdt: [1329317, 1329318, 1329319, 1329320],
      ii3050: [1370826, 1370828, 1370830, 1370832],
      high_hydrogen: [123_456, 243_568]
    }

    def initialize(presets)
      @presets = presets
    end

    def self.from_key(key)
      raise UnknownPresetError.new(key) unless PRESET_SCENARIOS.key? key

      PresetCollection.new(PRESET_SCENARIOS[key].map { |id| Turk::Preset.new(id) })
    end

    def each(&block)
      @presets.each(&block)
    end
  end
end
