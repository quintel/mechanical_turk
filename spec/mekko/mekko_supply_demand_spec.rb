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
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all input and output flows of mekko_of_collective_heat_mt to be balanced" do
        skip("Mechanical turk #186")
        expect(scenario.turk_mekko_of_collective_heat_mt_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_mt_supply)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the demand of mekko_of_collective_heat_mt to match the total mt heat demand" do
        skip("Mechanical turk #186")
        expect(scenario.turk_mekko_of_collective_heat_mt_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_mt_network_total_demand)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the supply of mekko_of_collective_heat_mt to be match the total mt heat supply" do
        skip("Mechanical turk #186")
        expect(scenario.turk_mekko_of_collective_heat_mt_supply).to softly_equal(scenario.turk_mekko_of_collective_heat_mt_network_total_supply)
      end
    end  
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all input and output flows of mekko_of_collective_heat_lt to be balanced" do
        skip("Mechanical turk #186")
        expect(scenario.turk_mekko_of_collective_heat_lt_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_lt_supply)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the demand of mekko_of_collective_heat_lt to match the total lt heat demand" do
        skip("Mechanical turk #186")
        expect(scenario.turk_mekko_of_collective_heat_lt_demand).to softly_equal(scenario.turk_mekko_of_collective_heat_lt_network_total_demand)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the supply of mekko_of_collective_heat_lt to be match the total lt heat supply" do
        skip("Mechanical turk #186")
        expect(scenario.turk_mekko_of_collective_heat_lt_supply).to softly_equal(scenario.turk_mekko_of_collective_heat_lt_network_total_supply)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all input and output flows of mekko_of_electricity_network to be balanced" do
        skip("ETSource 2930")
        expect(scenario.turk_mekko_of_electricity_network_demand).to softly_equal(scenario.turk_mekko_of_electricity_network_supply)
      end
    end 
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all input and output flows of mekko_of_network_gas_network to be balanced" do
        expect(scenario.turk_mekko_of_network_gas_network_demand).to softly_equal(scenario.turk_mekko_of_network_gas_network_supply)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the demand of mekko_of_collective_heat_lt to match the total lt heat demand" do
        skip("ETSource #3177")
        expect(scenario.turk_mekko_of_network_gas_network_demand).to softly_equal(scenario.turk_mekko_of_network_gas_network_total_demand)
      end
    end
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all the supply of mekko_of_collective_heat_lt to be match the total lt heat supply" do
        skip("ETSource #3177")
        expect(scenario.turk_mekko_of_network_gas_network_supply).to softly_equal(scenario.turk_mekko_of_network_gas_network_total_supply)
      end     
    end    
    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all input and output flows of agriculure_local_heat to be balanced" do
        expect(scenario.turk_agriculture_local_heat_mekko_demand).to softly_equal(scenario.turk_agriculture_local_heat_mekko_supply)
      end
    end    
  end
end

