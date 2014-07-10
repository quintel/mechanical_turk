# Spec to test the Loss of Load Expectation (LOLE)
# Relevant dashboard item: loss of load expectation
# Relevant sliders: all sliders in the ETM that affect supply and demand

require 'spec_helper'

describe "Starting with a scenario with nonzero LOLE," do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
    @scenario.number_of_energy_power_combined_cycle_network_gas = 0.0 # removing all the Gas CCGT to create a nonzero LOLP
    @scenario.number_of_energy_chp_combined_cycle_network_gas = 0.0 # removing all Gas CHP to increase LOLP
  end

  context "decreasing the number of nuclear plants" do

    it "should increase the LOLE" do
      @scenario.number_of_energy_power_nuclear_gen3_uranium_oxide = 0.0
      expect(@scenario.loss_of_load_expectation).to increase
    end
  end

  context "increasing the number of solar PV plants" do

    it "should not change the LOLE" do
      @scenario.number_of_energy_power_solar_pv_solar_radiation = 1000.0
      expect(@scenario.loss_of_load_expectation).to not_change
    end
  end

  context "increasing the number of wind turbines" do

    it "should not increase the LOLE" do
      @scenario.number_of_energy_power_wind_turbine_inland = 56000.0
      expect(@scenario.loss_of_load_expectation).to not_increase
    end
  end


  context "decreasing the population" do

    it "should decrease the total demand and hence the LOLE" do
      @scenario.households_number_of_inhabitants = 15
      expect(@scenario.loss_of_load_expectation).to decrease
    end
  end

end


describe "Capacity credit wind" do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "Removing all wind turbines" do

    it "should result in a capacity credit of 0.33" do
      @scenario.number_of_energy_power_wind_turbine_coastal = 0.0
      @scenario.number_of_energy_power_wind_turbine_inland = 0.0
      @scenario.number_of_energy_power_wind_turbine_offshore = 0.0

      expect(@scenario.capacity_credit_wind.value).to be == 0.33
    end
  end

    context "Increasing the number of wind turbines" do

    it "should decrease the capacity credit" do
      @scenario.number_of_energy_power_wind_turbine_coastal = 1000.0
      @scenario.number_of_energy_power_wind_turbine_inland = 1000.0
      @scenario.number_of_energy_power_wind_turbine_offshore = 1000.0

      expect(@scenario.capacity_credit_wind).to decrease
    end
  end

end
