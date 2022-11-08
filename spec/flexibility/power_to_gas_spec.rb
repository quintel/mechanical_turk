# frozen_string_literal: true

require 'spec_helper'

describe 'Input of power-to-gas' do
  Turk::PresetCollection.from_keys(:ii3050, :nvdt, :scenario_collection, :merit_off).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether electricity mix input of power-to-gas sums to total demand
      it 'Sum of series in the electricity mix for power-to-gas chart should match total demand of the node' do
        expect(
          scenario.turk_power_to_gas_electricity_demand
        ).to softly_equal(
          scenario.turk_power_to_gas_electricity_mix_input
        )
      end
    end
  end
end
