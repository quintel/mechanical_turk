require 'spec_helper'

RSpec.describe 'Sankey Balancing' do
  Turk::PresetCollection.from_keys(:ii3050v2).each do |scenario|
context "with scenario #{scenario.original_scenario_id}" do
  it "should result in all input and output flows of mekko_of_co2_demand_supply to be balanced" do
    expect(scenario.mekko_of_co2_demand_supply_demand).to softly_equal(scenario.mekko_of_co2_demand_supply_supply)
  end
end
context "with scenario #{scenario.original_scenario_id}" do
  it "should result in all input and output flows of agriculture_local_heat_mekko to be balanced" do
    expect(scenario.agriculture_local_heat_mekko_demand).to softly_equal(scenario.agriculture_local_heat_mekko_supply)
  end
end
context "with scenario #{scenario.original_scenario_id}" do
  it "should result in all input and output flows of industrial_heat_mekko to be balanced" do
    expect(scenario.industrial_heat_mekko_demand).to softly_equal(scenario.industrial_heat_mekko_supply)
  end
end
context "with scenario #{scenario.original_scenario_id}" do
  xit "should result in all input and output flows of mekko_of_hydrogen_network to be balanced" do
    expect(scenario.mekko_of_hydrogen_network_demand).to softly_equal(scenario.mekko_of_hydrogen_network_supply)
  end
end
context "with scenario #{scenario.original_scenario_id}" do
  it "should result in all input and output flows of mekko_of_ammonia_demand_supply to be balanced" do
    expect(scenario.mekko_of_ammonia_demand_supply_demand).to softly_equal(scenario.mekko_of_ammonia_demand_supply_supply)
  end
end
context "with scenario #{scenario.original_scenario_id}" do
  it "should result in all input and output flows of mekko_of_kerosene_demand_supply to be balanced" do
    expect(scenario.mekko_of_kerosene_demand_supply_demand).to softly_equal(scenario.mekko_of_kerosene_demand_supply_supply)
  end
end
  end
end
