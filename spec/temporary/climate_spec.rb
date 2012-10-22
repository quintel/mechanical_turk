#
require 'spec_helper'

describe "Testing climate slider" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: false)
  end

  context "Testing impact on heat demand of residences" do

    it "it should decrease total energy consumption if climate slider is pulled to max" do
      pp @scenario.dashboard_energy_demand_primary_of_final.future

      @scenario.households_climate_influence = 5.0 # degrees centigrade

      pp @scenario.dashboard_energy_demand_primary_of_final.future

      @scenario.dashboard_energy_demand_primary_of_final.should decrease
    end

    it "it should increase total energy consumption if climate slider is pulled to min" do
      pp @scenario.dashboard_energy_demand_primary_of_final.future

      @scenario.households_climate_influence = -2.0 # degrees centigrade

      pp @scenario.dashboard_energy_demand_primary_of_final.future

      @scenario.dashboard_energy_demand_primary_of_final.should increase
    end

    it "it should decrease heat demand of climate slider is pulled to max" do
      pp @scenario.heat_demand_including_electric_heating_in_use_of_final_demand_in_households.future

      @scenario.households_climate_influence = 5.0 # degrees centigrade

      pp @scenario.heat_demand_including_electric_heating_in_use_of_final_demand_in_households.future

      @scenario.heat_demand_including_electric_heating_in_use_of_final_demand_in_households.should decrease
    end

    it "it should increase heat demand of climate slider is pulled to min" do
      pp @scenario.heat_demand_including_electric_heating_in_use_of_final_demand_in_households.future

      @scenario.households_climate_influence = -5.0 # degrees centigrade

      pp @scenario.heat_demand_including_electric_heating_in_use_of_final_demand_in_households.future

      @scenario.heat_demand_including_electric_heating_in_use_of_final_demand_in_households.should increase
    end

  end
end