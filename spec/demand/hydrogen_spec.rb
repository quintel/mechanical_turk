# frozen_string_literal: true

require 'spec_helper'

describe 'Hydrogen' do
  Turk::PresetCollection.from_keys(:ii3050v2, :kev, :scenario_collection).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      it 'Annual demand and supply of hydrogen should match' do
        skip("Awaiting fix for hydrogen imbalance caused by issue with hybrid heaters in industry")
        expect(
          scenario.turk_hydrogen_mekko_supply
        ).to softly_equal(
          scenario.turk_hydrogen_mekko_demand
        )
      end

      # it 'Hourly demand should sum up to annual demand' do
      #   expect(
      #     scenario.total_primary_demand
      #   ).to softly_equal(
      #     scenario.turk_hydrogen_mekko_demand
      #   )
      # end

      # it 'Hourly supply should sum up to annual supply' do
      #   expect(
      #     scenario.turk_queries_primary_demand_per_sector
      #   ).to softly_equal(
      #     scenario.turk_hydrogen_mekko_supply
      #   )
      # end
    end
  end
end
