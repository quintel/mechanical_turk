# Example Spec that would apply for all countries
# Created by Dennis, April 1th 2012
# For testing out first version of the Turk

require 'spec_helper'

describe "Central coal-fired heater" do

  before(:all) do
    @scenario = Scenario.new(country: "nl", end_year: 2050)
    @scenario.track(["total_co2_emissions",
                     "dashboard_bio_footprint", 
                     "dashboard_total_costs", 
                     "fossil_energy_used_for_heat_and_cold_production", 
                     "dashboard_energy_demand_primary_of_final",
                     "dashboard_energy_import_netto"])
    @scenario.refresh!
    @scenario.set_input 430, 10
  end

  it "should increase primary demand" do
    @scenario.dashboard_energy_demand_primary_of_final.increase.should > 0
  end

  it "should increase import" do
    @scenario.dashboard_energy_import_netto.increase.should > 0
  end

  it "should increase co2" do
    @scenario.total_co2_emissions.increase.should > 0
  end

  it "should not increase bio footprint" do
    @scenario.dashboard_bio_footprint.increase.should == 0
  end

  it "should increase the fossile energy for heat and cold production" do
    @scenario.result("fossil_energy_used_for_heat_and_cold_production").increase.should be > 0
  end

end
