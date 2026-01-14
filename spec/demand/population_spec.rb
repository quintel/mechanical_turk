# Example Spec that would apply for all countries
# Inspired on the issue with replacement of households
# Relevant slider #335
# Chart #57

require 'spec_helper'

describe "Population" do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl2023", end_year: 2050, inputs: {
      households_number_of_inhabitants: 30 # million
    })
  end

  it "should increase primary demand" do
    expect(@scenario.primary_demand).to increase
  end

  it "should increase co2" do
    expect(@scenario.co2).to increase
  end

  it "should not increase the heat demand for old and new houses" do
    expect(@scenario.turk_heat_demand_in_households).to not_change
  end

  it "should not increase the cooling demand for old and new houses" do
    expect(@scenario.turk_cooling_demand_in_households.increase).to be == 0
  end

  it "should increase the electricity demand in hh" do
    expect(@scenario.turk_appliances_demand_in_households).to increase
  end

  it "should increase the hot water demand in hh" do
    expect(@scenario.turk_hot_water_demand_in_households).to increase
  end


end
