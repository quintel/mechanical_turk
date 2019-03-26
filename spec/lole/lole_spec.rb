# Spec to test the Loss of Load Expectation (LOLE)
# Relevant dashboard item: loss of load expectation
# Relevant sliders: all sliders in the ETM that affect supply and demand

require 'spec_helper'

describe "Starting with a scenario with nonzero LOLE," do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      # removing all the Gas CCGT to create a nonzero LOLP
      number_of_energy_power_combined_cycle_network_gas: 0.0,
      # removing all Gas CHP to increase LOLP
      number_of_energy_chp_combined_cycle_network_gas: 0.0
    })
  end

  context "decreasing the number of nuclear plants" do

    it "should increase the LOLE" do
      @scenario.number_of_energy_power_nuclear_gen2_uranium_oxide = 0.0
      expect(@scenario.loss_of_load_expectation).to increase
    end
  end

  context "increasing the installed capacity of solar PV plants" do

    it "should not increase the LOLE" do
      @scenario.capacity_of_energy_power_solar_pv_solar_radiation = 20000.0
      expect(@scenario.loss_of_load_expectation).to not_increase
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
