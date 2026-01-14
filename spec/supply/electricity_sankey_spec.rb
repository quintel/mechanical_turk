# frozen_string_literal: true

require 'spec_helper'

describe 'Electricity Sankey' do

  # Activation of ii3050v2 pending ETSource#3405
  # Turk::PresetCollection.from_keys(:ii3050v2, :kev, :scenario_collection).each do |scenario|
  # Instead, ii3050v2 is skipped for now:
  Turk::PresetCollection.from_keys(:kev, :scenario_collection).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether electricity supply equals demand in the electricity Sankey
      it 'Supply of electricity in the electricity Sankey should match the demand for electricity in
        the electricity Sankey' do
        expect(
          scenario.turk_electricity_sankey_supply
        ).to softly_equal(
          scenario.turk_electricity_sankey_demand
        )
      end

      # Test whether all electricity supply is included in the electricity Sankey
      it 'Supply of electricity in the electricity Sankey should match the total supply
        of electricity' do
        expect(
          scenario.turk_electricity_sankey_supply
        ).to softly_equal(
          scenario.turk_electricity_total_supply
        )
      end
    end
  end
end
