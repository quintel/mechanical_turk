require 'spec_helper'

RSpec.describe 'Mekko balancing' do
  Turk::PresetCollection.from_keys(:ii3050v2).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether supply equals demand in mekko
      it "should result in all supply and demand flows of mekko_of_collective_heat_ht to be balanced" do
        skip("ETEngine #1486")
        expect(scenario.turk_mekko_of_collective_heat_ht_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_ht_supply)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether total demand in mekko equals total carrier demand
      it "should result in total demand in mekko_of_collective_heat_ht to match the total HT heat demand" do
        expect(scenario.turk_mekko_of_collective_heat_ht_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_ht_network_total_demand)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether total supply in mekko equals total carrier supply
      it "should result in total supply in mekko_of_collective_heat_ht to match the total HT heat supply" do
        expect(scenario.turk_mekko_of_collective_heat_ht_supply).to softly_equal(scenario.turk_mekko_of_collective_heat_ht_network_total_supply)
      end
    end
  end
end
