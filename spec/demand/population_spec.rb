# Example Spec that would apply for all countries
# Inspired on the issue with replacement of households
# Relevant slider #335
# Chart #57

require 'spec_helper'

describe "Population" do

  before(:all) do
    @scenario = Scenario.new(country: "nl", end_year: 2050)
    @scenario.move_slider 335, 5 #%
  end

  it "should increase primary demand" do
    @scenario.primary_demand.should increase
  end

  it "should increase co2" do
    @scenario.co2.should increase
  end

  it "should not increase the heat demand for old and new houses" do
    @scenario.heat_demand_including_electric_heating_in_use_of_final_demand_in_households.should not_change
  end
  
  it "should not increase the cooling demand for old and new houses" do
    @scenario.cooling_demand_in_use_of_final_demand_in_households.increase.should be == 0
  end
  
  it "should increase the electricity demand in hh" do
    @scenario.electricity_demand_excluding_heating_in_use_of_final_demand_in_households.should increase
  end
  
  it "should increase the hot water demand in hh" do
    @scenario.hot_water_demand_in_use_of_final_demand_in_households.should increase
  end
  
  
end
