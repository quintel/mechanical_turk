require 'spec_helper'

describe 'Primary Demand' do
  let(:default_margin) { 1.0E-12 }

  Turk::PresetCollection.from_key(:ii3050).each do |scenario|
    # Test whether application group covers all final demand and exports
    it 'primary demand of the application group nodes should always equal primary demand of the nodes in the final_demand_group and energy_export group' do
      expect(scenario.primary_demand_of_application_group.value)
        .to be_within(default_margin * scenario.primary_demand_of_final_demand_and_export.value)
        .of(scenario.primary_demand_of_final_demand_and_export.value)
    end

    # Test whether total primary demand is accounted for by final demand, exports and curtailment. Refinery gas is also added to this list due to this issue: https://github.com/quintel/etsource/issues/1156.
    it 'total primary demand in the graph should always equal primary demand of the nodes in the final_demand_group, energy_export group and curtailment.' do
      puts scenario.id
      expect(scenario.total_primary_demand.value)
        .to be_within(default_margin * scenario.primary_demand_of_final_demand_export_curtailment_and_refinery_gas.value)
        .of(scenario.primary_demand_of_final_demand_export_curtailment_and_refinery_gas.value)
    end
  end
end
