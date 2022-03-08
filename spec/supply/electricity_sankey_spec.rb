# frozen_string_literal: true

require 'spec_helper'

describe 'Electricity Sankey' do
  Turk::PresetCollection.from_keys(:ii3050, :nvdt, :scenario_collection, :merit_off).each do |scenario|
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

      # Test whether all electricity demand is included in the electricity Sankey
      xit 'Demand of electricity in the electricity Sankey should match the total demand 
        for electricity' do
        expect(
          scenario.turk_electricity_sankey_demand
        ).to softly_equal(
          scenario.demand_and_export_in_source_of_electricity_production
        )
      end
    end
  end
end
