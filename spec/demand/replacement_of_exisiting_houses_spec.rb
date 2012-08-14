# Example Spec that would apply for all countries
# Inspired on the issue with replacement of households
# Relevant slider #1
# Chart 57

require 'spec_helper'

describe "Replacement of existing houses" do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)

    # move slider 1 (replacement of old houses in %/year)
    @scenario.households_replacement_of_existing_houses = 2.5

    VALUE_IF_NO_HOUSES_REPLACED = 298.91
    VALUE_IF_ALL_HOUSES_REPLACED = 220.58

  end

  it "should not increase primary demand" do
    @scenario.primary_demand.decrease.should be > 0
  end

  it "should decrease co2" do
    @scenario.co2.decrease.should be > 0
  end

  it "should decrease the heat demand for houses" do
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").decrease.should be > 0
  end

  it "should decrease the heat demand for houses between the min and max values" do
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").value.should be  <  VALUE_IF_NO_HOUSES_REPLACED
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").value.should be >  VALUE_IF_ALL_HOUSES_REPLACED
  end


end
