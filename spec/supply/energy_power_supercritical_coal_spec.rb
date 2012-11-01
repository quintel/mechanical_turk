# Example Spec that would apply for all countries
# Created by Dennis, April 1th 2012
# For testing out first version of the Turk

require 'spec_helper'

describe "Central coal-plant" do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
    @scenario.number_of_coal_conventional = 10
  end

  it "should increase primary demand" do
    expect(@scenario.primary_demand).to increase
  end

  it "should increase import" do
    expect(@scenario.import).to increase
  end

  it "should increase co2" do
    expect(@scenario.co2).to increase
  end

  it "should not change bio footprint" do
    expect(@scenario.footprint).to not_change
  end

  # This converter does not supply a heat of cold network
  it "should not change the fossile energy for heat and cold production" do
    expect(@scenario.fossil_energy_used_for_heat_and_cold_production).to not_change
  end

end
