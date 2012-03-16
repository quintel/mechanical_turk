# Example Spec that would apply for all countries
# Inspired on the issue with replacement of households
# Relevant slider #335
# Chart #57

describe "Population" do

  before(:all) do
    @scenario = Scenario.new
    @scenario.move_slider 335, 5.0
  end

  it "should increase primary demand" do
    @scenario.primary_demand.increase.should be > 0
  end

  it "should increase co2" do
    @scenario.co2.increase.should be > 0
  end

  it "should not increase the heat demand for old and new houses" do
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").increase.should be == 0
  end
  
  it "should not increase the cooling demand for old and new houses" do
    @scenario.result("cooling_demand_in_use_of_final_demand_in_households").increase.should be == 0
  end
  
  it "should increase the electricity demand in hh" do
    @scenario.result("electricity_demand_excluding_heating_in_use_of_final_demand_in_households").increase.should be > 0
  end
  
  it "should increase the hot water demand in hh" do
    @scenario.result("hot_water_demand_in_use_of_final_demand_in_households").increase.should be > 0
  end
  
  
end
