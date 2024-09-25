require 'spec_helper'

describe "sankey" do
  Turk::PresetCollection.from_keys(:ii3050v2).each do |scenario|
    context "with scenario {scenario.original_scenario_id}" do
      it "should result in all input and output flows of the mekko_of_co2_demand_supply_sankey nodes to be equal" do
        expect(
          scenario.mekko_of_co2_demand_supply_demand
        ).to softly_equal(
          scenario.mekko_of_co2_demand_supply_supply
        )
      end
    end
    context "with scenario {scenario.original_scenario_id}" do
      it "should result in all input and output flows of the agriculture_local_heat_mekko_sankey nodes to be equal" do
        expect(
          scenario.agriculture_local_heat_mekko_demand
        ).to softly_equal(
          scenario.agriculture_local_heat_mekko_supply
        )
      end
    end
    context "with scenario {scenario.original_scenario_id}" do
      it "should result in all input and output flows of the industrial_heat_mekko_sankey nodes to be equal" do
        expect(
          scenario.industrial_heat_mekko_demand
        ).to softly_equal(
          scenario.industrial_heat_mekko_supply
        )
      end
    end
    context "with scenario {scenario.original_scenario_id}" do
      it "should result in all input and output flows of the mekko_of_hydrogen_network_sankey nodes to be equal" do
        expect(
          scenario.mekko_of_hydrogen_network_demand
        ).to softly_equal(
          scenario.mekko_of_hydrogen_network_supply
        )
      end
    end
    context "with scenario {scenario.original_scenario_id}" do
      it "should result in all input and output flows of the mekko_of_ammonia_demand_supply_sankey nodes to be equal" do
        expect(
          scenario.mekko_of_ammonia_demand_supply_demand
        ).to softly_equal(
          scenario.mekko_of_ammonia_demand_supply_supply
        )
      end
    end
    context "with scenario {scenario.original_scenario_id}" do
      it "should result in all input and output flows of the mekko_of_kerosene_demand_supply_sankey nodes to be equal" do
        expect(
          scenario.mekko_of_kerosene_demand_supply_demand
        ).to softly_equal(
          scenario.mekko_of_kerosene_demand_supply_supply
        )
      end
    end
  end
end
