# frozen_string_literal: true

require 'spec_helper'

describe 'Energy flows (overview) data-export' do
  # TODO add full testing suite when finished
  Turk::PresetCollection.from_keys(:ii3050).each do |scenario|
    
    context "with scenario #{scenario.original_scenario_id}" do
      
      # TODO enable primary demand (temporarily disabled for quicker testing)

      # Test primary demand flows in the Sankey with nodes in the graph

      # it 'Primary demand of electricity should match the sum of electricity primary demand flows in the data-export' do
      #   skip ('Excess electricity node seems to cause the difference, TODO investigate further')
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_electricity_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_electricity_nodes
      #   )
      # end

      # it 'Primary demand of hydrogen should match the sum of hdyrogen primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_hydrogen_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_hydrogen_nodes
      #   )
      # end

      # it 'Primary demand of uranium should match the sum of uranium primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_uranium_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_uranium_nodes
      #   )
      # end

      # it 'Primary demand of steam hot water should match the sum of steam hot water primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_steam_hot_water_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_steam_hot_water_nodes
      #   )
      # end

      # it 'Primary demand of coal should match the sum of coal primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_coal_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_coal_nodes
      #   )
      # end

      # it 'Primary demand of oil should match the sum of oil primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_oil_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_oil_nodes
      #   )
      # end

      # it 'Primary demand of natural gas should match the sum of natural gas primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_natural_gas_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_natural_gas_nodes
      #   )
      # end

      # it 'Primary demand of biomass should match the sum of biomass primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_biomass_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_biomass_nodes
      #   )
      # end

      # it 'Primary demand of ammonia should match the sum of ammonia primary demand flows in the data-export' do
      #   expect(
      #     scenario.turk_sankey_primary_demand_of_ammonia_flows
      #   ).to softly_equal(
      #     scenario.turk_sankey_primary_demand_of_ammonia_nodes
      #   )
      # end

      # TODO add test to verify if all primary demand nodes are present in the defined flows


      # Test final demand flows in the Sankey with nodes in the graph

      # TODO add export "final demand" to the test

      it 'Final demand of electricity should match the sum of electricity final demand flows in the data-export' do
        expect(
          scenario.turk_sankey_final_demand_of_electricity_flows
        ).to softly_equal(
          scenario.final_demand_of_electricity
        )
      end

      it 'Final demand of hydrogen should match the sum of hydrogen final demand flows in the data-export' do
        expect(
          scenario.turk_sankey_final_demand_of_hydrogen_flows
        ).to softly_equal(
          scenario.final_demand_of_hydrogen
        )
      end

      it 'Final demand of heat should match the sum of heat final demand flows in the data-export' do
        expect(
          scenario.turk_sankey_final_demand_of_heat_flows
        ).to softly_equal(
          scenario.final_demand_of_heat
        )
      end

      it 'Final demand of coal should match the sum of coal final demand flows in the data-export' do
        expect(
          scenario.turk_sankey_final_demand_of_coal_flows
        ).to softly_equal(
          scenario.final_demand_of_coal_and_derivatives
        )
      end

      it 'Final demand of oil should match the sum of oil final demand flows in the data-export' do
       skip ('Caused by difference between final demand edges approach and nodes approach, see quintel/etsource#2781')
        expect(
          scenario.turk_sankey_final_demand_of_oil_flows
        ).to softly_equal(
          scenario.final_demand_of_oil_and_derivatives
        )
      end

      it 'Final demand of natural gas should match the sum of natural gas final demand flows in the data-export' do
        expect(
          scenario.turk_sankey_final_demand_of_natural_gas_flows
        ).to softly_equal(
          scenario.turk_sankey_final_demand_of_natural_gas_and_derivatives_nodes
        )
      end

      it 'Final demand of biomass should match the sum of biomass final demand flows in the data-export' do
       skip ('Caused by difference between final demand edges approach and nodes approach, see quintel/etsource#2781')
        expect(
          scenario.turk_sankey_final_demand_of_biomass_flows
        ).to softly_equal(
          scenario.turk_sankey_final_demand_of_biomass_products_nodes
        )
      end

      it 'Final demand of ammonia should match the sum of ammonia final demand flows in the data-export' do
        expect(
          scenario.turk_sankey_final_demand_of_ammonia_flows
        ).to softly_equal(
          scenario.final_demand_of_ammonia
        )
      end

      # While awaiting fix for quintel/etsource#2781 biomass and oil are tested together

      it 'Final demand of biomass and oil should match the sum of biomass and oil final demand flows in the data-export' do
        expect(
          scenario.turk_sankey_final_demand_of_oil_and_biomass_flows
        ).to softly_equal(
          scenario.turk_sankey_final_demand_of_oil_and_biomass_products_nodes
        )
      end

    end
  end
end
