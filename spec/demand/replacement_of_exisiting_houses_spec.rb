# Example Spec that would apply for all countries
# Inspired on the issue with replacement of households
# Relevant slider #1
# Chart 57

describe "Replacement of existing houses" do

  before(:all) do
    @scenario = Scenario.new
    @scenario.move_slider 1, 2.5
  end

  it "should not increase primary demand" do
    @scenario.primary_demand.increase.should be == 0
  end

  it "should decrease co2" do
    @scenario.co2.decrease.should be > 0
  end

  it "should decrease the heat demand for houses" do
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").decrease.should be > 0
  end

  it "should decrease the heat demand for houses between the min and max values" do
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").decrease.should be > 0
  end

  
end
