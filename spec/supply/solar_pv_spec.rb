require 'spec_helper'

describe "Solar PV do" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl2019", end_year: 2050)
  end

  describe "Increasing efficiency" do
    it "should increase electricity_output_conversion and decrease number_of_units" do
      # increasing solar PV efficiency
      @scenario.efficiency_energy_power_solar_pv_solar_radiation = 20.0 #%

      # electricity_output_conversion should increse, number of units should decrease
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_efficiency).to increase
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_number_of_units).to decrease

      # full load hours, total electricity output capacity and total production should remain constant
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_full_load_hours.increase).to be < 1.0E-10
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_total_electricity_output_capacity.increase).to be < 1.0E-10
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_total_production.increase).to be < 1.0E-10
    end
  end

  describe "Increasing total output capacity" do
    it "should increase total output capacity, number of units and total production" do
      # increasing total electricity output capacity
      @scenario.capacity_of_energy_power_solar_pv_solar_radiation = 800.0 #MW

      # electricity output capacity, number_of_units, total production should increase
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_total_electricity_output_capacity).to increase
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_number_of_units).to increase
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_total_production).to increase

      # full load hours and efficiency should remain constant
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_full_load_hours.increase).to be < 1.0E-10
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_efficiency.increase).to be < 1.0E-10
    end
  end

  describe "Increasing full load hours" do
    it "should increase full load hours and total production" do
      # increasing full load hours
      @scenario.flh_of_energy_power_solar_pv_solar_radiation = 900.0 #hours

      # full load hours and total production should increase
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_full_load_hours).to increase
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_total_production).to increase

      # efficiency, total electricity output capacity and number of units should remain constant
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_efficiency.increase).to be < 1.0E-10
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_total_electricity_output_capacity.increase).to be < 1.0E-10
      expect(@scenario.turk_energy_power_solar_pv_solar_radiation_number_of_units.increase).to be < 1.0E-10
    end
  end

end
