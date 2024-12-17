require 'spec_helper'

MEKKO_AND_QUERIES = {
    'mekko_of_collective_heat_ht' => [:turk_mekko_of_collective_heat_ht_demand, :turk_mekko_of_collective_heat_ht_supply, :turk_mekko_of_collective_heat_ht_network_total_demand, :turk_mekko_of_collective_heat_ht_network_total_supply],
    'mekko_of_collective_heat_mt' => [:turk_mekko_of_collective_heat_mt_demand, :turk_mekko_of_collective_heat_mt_supply, :turk_mekko_of_collective_heat_mt_network_total_demand, :turk_mekko_of_collective_heat_mt_network_total_supply],
    'mekko_of_collective_heat_lt' => [:turk_mekko_of_collective_heat_lt_demand, :turk_mekko_of_collective_heat_lt_supply, :turk_mekko_of_collective_heat_lt_network_total_demand, :turk_mekko_of_collective_heat_lt_network_total_supply]
  }

describe 'Mekko balancing' do
  Turk::PresetCollection.from_keys(:ii3050v2,:ii3050,:scenario_collection,:merit_off).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      MEKKO_AND_QUERIES.each do |key, (demand_mekko, supply_mekko, demand_network, supply_network)|
        # Test whether supply equals demand in mekko
        it "#{key} - supply should match demand in mekko" do
          expect(
            scenario.send(demand_mekko)
          ).to softly_equal(
            scenario.send(supply_mekko)
          )
        end

        # Test whether demand in mekko equals total demand
        it "#{key} - demand in mekko should match total demand" do
        expect(
          scenario.send(demand_mekko)
        ).to softly_equal(
          scenario.send(demand_network)
        )
        end

        # Test whether supply in mekko equals total supply
        it "#{key} - supply in mekko should match total supply" do
          expect(
            scenario.send(supply_mekko)
          ).to softly_equal(
            scenario.send(supply_network)
          )
        end
      end
    end
  end
end
