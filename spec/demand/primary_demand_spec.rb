# frozen_string_literal: true

require 'spec_helper'

describe 'Primary Demand' do
  Turk::PresetCollection.from_keys(:ii3050, :nvdt).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether application group covers all final demand and exports
      it 'primary demand of the application group nodes should always equal primary demand of the
        nodes in the final_demand_group and energy_export group' do
        expect(
          scenario.primary_demand_of_application_group
        ).to softly_equal(
          scenario.primary_demand_of_final_demand_and_export
        )
      end

      # Test whether total primary demand is accounted for by final demand, exports and curtailment.
      # Refinery gas is also added to this list due to this issue: https://github.com/quintel/etsource/issues/1156.
      it 'total primary demand in the graph should always equal primary demand of the nodes in the
        final_demand_group, energy_export group and curtailment.' do
        expect(
          scenario.total_primary_demand
        ).to softly_equal(
          scenario.primary_demand_of_final_demand_export_curtailment_and_refinery_gas
        )
      end

      it 'the primary demand per sector chart should always equal total primary demand
        of final_demand_group, energy_export group and curtailment.' do
        expect(
          scenario.turk_queries_primary_demand_per_sector
        ).to softly_equal(
          scenario.primary_demand_of_final_demand_export_and_curtailment
        )
      end
    end
  end
end
