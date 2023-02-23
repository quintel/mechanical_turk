# frozen_string_literal: true

require 'spec_helper'

describe 'Generic groups tests' do
  Turk::PresetCollection.from_keys(:ii3050, :nvdt, :scenario_collection, :merit_off).each do |scenario|
    
    context "with scenario #{scenario.original_scenario_id}" do
      
      # Test whether total final demand in industry edge groups equals total final demand in industry node group
      it 'Sum of final demand edge groups should match sum of final demand node group in industry' do
        skip ('Edge groups include ambient heat in chemical other (heatpump & recompression), node group does not include this, TODO address difference')
        expect(
          scenario.turk_final_demand_in_industry_edge_groups
        ).to softly_equal(
          scenario.turk_final_demand_in_industry_node_groups
        )
      end

      # Test whether total final demand in households edge groups equals total final demand in households node group
      it 'Sum of final demand edge groups should match sum of final demand node group in households' do
        expect(
          scenario.turk_final_demand_in_households_edge_groups
        ).to softly_equal(
          scenario.turk_final_demand_in_households_node_groups
        )
      end

    end
  end
end
