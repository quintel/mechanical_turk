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
      nvdt: [112_999_0, 112_999_0],
      basic: [472_389, 428_904, 929_277],
      high_hydrogen: [123_456, 243_568],
      regional: [345_689, 801_831]
    }.freeze

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
