#
require 'spec_helper'

describe "Demand > Households > Space Heating" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  context "Testing if 0 < full_load_hours < 8760 (hours in a year)" do

        # For every space heating technology, the turk_number_of_units should go to #HHs when slider = 100%
    it " full_load_hours of households_space_heater_electricity should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_electricity_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_electricity.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_space_heater_heatpump_ground_water_electricity should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_heatpump_ground_water_electricity_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_heatpump_ground_water_electricity.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_space_heater_wood_pellets should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_wood_pellets_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_wood_pellets.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_space_heater_coal should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_coal_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_coal.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_space_heater_crude_oil should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_crude_oil_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_crude_oil.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_space_heater_heatpump_air_water_electricity should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_heatpump_air_water_electricity_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_heatpump_air_water_electricity.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_space_heater_micro_chp_network_gas should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_micro_chp_network_gas_share = 50 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_micro_chp_network_gas.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_space_heater_network_gas should be within 4380.0 of 4380.0" do
      @scenario.households_space_heater_network_gas_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_space_heater_network_gas.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_resistive_electricity should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_resistive_electricity_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_resistive_electricity.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_wood_pellets should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_wood_pellets_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_wood_pellets.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_coal should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_coal_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_coal.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_crude_oil should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_crude_oil_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_crude_oil.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_network_gas should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_network_gas_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_network_gas.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_micro_chp_network_gas should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_micro_chp_network_gas_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_micro_chp_network_gas.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_fuel_cell_chp_network_gas should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_fuel_cell_chp_network_gas_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_fuel_cell_chp_network_gas.value).to be_within(4380.0).of(4380.0)
    end

    it " full_load_hours of households_water_heater_heatpump_air_water_electricity should be within 4380.0 of 4380.0" do
      @scenario.households_water_heater_heatpump_air_water_electricity_share = 100 #%
      expect(@scenario.turk_full_load_hours_of_households_water_heater_heatpump_air_water_electricity.value).to be_within(4380.0).of(4380.0)
    end
  end

  context "Testing if number_of_units == 7349500 (#households)" do

    it " number_of_units of households_space_heater_electricity should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_electricity_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_electricity.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_space_heater_heatpump_ground_water_electricity should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_heatpump_ground_water_electricity_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_heatpump_ground_water_electricity.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_space_heater_wood_pellets should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_wood_pellets_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_wood_pellets.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_space_heater_coal should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_coal_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_coal.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_space_heater_crude_oil should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_crude_oil_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_crude_oil.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_space_heater_heatpump_air_water_electricity should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_heatpump_air_water_electricity_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_heatpump_air_water_electricity.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_space_heater_micro_chp_network_gas should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_micro_chp_network_gas_share = 50 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_micro_chp_network_gas.value).to be_within(10.0).of(3674750.0)
    end

    it " number_of_units of households_space_heater_network_gas should be within 10.0 of 7349500.0" do
      @scenario.households_space_heater_network_gas_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_space_heater_network_gas.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_resistive_electricity should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_resistive_electricity_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_resistive_electricity.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_wood_pellets should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_wood_pellets_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_wood_pellets.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_coal should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_coal_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_coal.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_crude_oil should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_crude_oil_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_crude_oil.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_network_gas should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_network_gas_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_network_gas.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_micro_chp_network_gas should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_micro_chp_network_gas_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_micro_chp_network_gas.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_fuel_cell_chp_network_gas should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_fuel_cell_chp_network_gas_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_fuel_cell_chp_network_gas.value).to be_within(10.0).of(7349500.0)
    end

    it " number_of_units of households_water_heater_heatpump_air_water_electricity should be within 10.0 of 7349500.0" do
      @scenario.households_water_heater_heatpump_air_water_electricity_share = 100 #%
      expect(@scenario.turk_number_of_units_of_households_water_heater_heatpump_air_water_electricity.value).to be_within(10.0).of(7349500.0)
    end
  end
end
