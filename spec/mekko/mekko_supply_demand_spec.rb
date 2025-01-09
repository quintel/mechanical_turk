require 'spec_helper'

RSpec.describe 'Mekko balancing' do
  Turk::PresetCollection.from_keys(:ii3050v2).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all input and output flows of mekko_of_collective_heat_ht to be balanced" do
        skip("ETSource 3165")
        expect(scenario.turk_mekko_of_collective_heat_ht_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_ht_supply)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the demand of mekko_of_collective_heat_ht to match the total ht heat demand" do
        expect(scenario.turk_mekko_of_collective_heat_ht_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_ht_network_total_demand)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the supply of mekko_of_collective_heat_ht to be match the total ht heat supply" do
        expect(scenario.turk_mekko_of_collective_heat_ht_supply).to softly_equal(scenario.turk_mekko_of_collective_heat_ht_network_total_supply)
      end
    end
  end
end

