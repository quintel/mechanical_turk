# frozen_string_literal: true

require 'spec_helper'

describe 'Energy flows (overview) data-export' do
  # TODO add full testing suite when finished
  Turk::PresetCollection.from_keys(:ii3050).each do |scenario|
    
    context "with scenario #{scenario.original_scenario_id}" do
      
      # Test primary demand flows in the Sankey with nodes in the graph

      it 'Primary demand of electricity should match the sum of electricity primary demand flows in the data-export' do
        skip ('Excess electricity node seems to cause the difference, TODO investigate further')
        expect(
          scenario.turk_sankey_primary_demand_of_electricity_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_electricity_nodes
        )
      end

      it 'Primary demand of hydrogen should match the sum of hdyrogen primary demand flows in the data-export' do
        expect(
          scenario.turk_sankey_primary_demand_of_hydrogen_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_hydrogen_nodes
        )
      end

      it 'Primary demand of uranium should match the sum of uranium primary demand flows in the data-export' do
        expect(
          scenario.turk_sankey_primary_demand_of_uranium_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_uranium_nodes
        )
      end

      it 'Primary demand of steam hot water should match the sum of steam hot water primary demand flows in the data-export' do
        skip ('Steam hot water primary should not include geothermal and solar TODO solve')
        expect(
          scenario.turk_sankey_primary_demand_of_steam_hot_water_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_steam_hot_water_nodes
        )
      end

      it 'Primary demand of coal should match the sum of coal primary demand flows in the data-export' do
        expect(
          scenario.turk_sankey_primary_demand_of_coal_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_coal_nodes
        )
      end

      it 'Primary demand of oil should match the sum of oil primary demand flows in the data-export' do
        expect(
          scenario.turk_sankey_primary_demand_of_oil_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_oil_nodes
        )
      end

      it 'Primary demand of natural gas should match the sum of natural gas primary demand flows in the data-export' do
        expect(
          scenario.turk_sankey_primary_demand_of_natural_gas_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_natural_gas_nodes
        )
      end

      it 'Primary demand of biomass should match the sum of biomass primary demand flows in the data-export' do
        expect(
          scenario.turk_sankey_primary_demand_of_biomass_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_biomass_nodes
        )
      end

      it 'Primary demand of ammonia should match the sum of ammonia primary demand flows in the data-export' do
        expect(
          scenario.turk_sankey_primary_demand_of_ammonia_flows
        ).to softly_equal(
          scenario.turk_sankey_primary_demand_of_ammonia_nodes
        )
      end

      # TODO add test to verify if all primary demand nodes are present in the defined flows

    end
  end
end
