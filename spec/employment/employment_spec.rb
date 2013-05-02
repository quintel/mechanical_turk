#
require 'spec_helper'

describe "Testing employment module" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end


  context "Testing dashboard_employment" do

    # The overall employment should change with different sliders
    it "it should decrease employment when the Electric heater in HHs space heating is pulled to max" do
      @scenario.households_heating_electric_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to decrease
    end

    #
    it "it should increase employment when the employment_fraction_production is pulled to max" do
      @scenario.employment_fraction_production = 90 #%
      expect(@scenario.dashboard_employment).to increase
    end

    it "it should increase employment when the employment_local_fraction is pulled to max" do
      @scenario.employment_local_fraction = 100 #%
      expect(@scenario.dashboard_employment).to increase
    end

    it "it should increase employment when the economic_multiplier is pulled to max" do
      @scenario.economic_multiplier = 3 # factor
      expect(@scenario.dashboard_employment).to increase
    end
  end

  #Checking for change
  context "Testing all employment converters" do

    it "it should change total employment when the buildings_collective_geothermal is pulled to max" do
      @scenario.buildings_heating_geothermal_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_collective_chp_gas_power_fuelmix is pulled to max" do
      @scenario.buildings_heating_small_gas_chp_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_collective_chp_wood_pellets is pulled to max" do
      @scenario.buildings_heating_biomass_chp_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_cooling_airconditioning is pulled to min" do
      @scenario.buildings_cooling_airconditioning_share = 0 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_cooling_collective_heatpump_water_water_ts_electricity is pulled to max" do
      @scenario.buildings_cooling_heat_pump_with_ts_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_cooling_heatpump_air_water_network_gas is pulled to max" do
      @scenario.buildings_cooling_gas_fired_heat_pump_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_solar_pv_solar_radiation is pulled to max" do
      @scenario.buildings_heating_solar_thermal_panels_share = 13.0 #%
      expect(@scenario.dashboard_employment).to change
    end

    # This input does not exist
    # it "it should change total employment when the buildings_space_heater_coal is pulled to max" do
    #   @scenario.number_of_coal_fired_heater = 100 #%
    #   expect(@scenario.dashboard_employment).to change
    # end

    it "it should change total employment when the buildings_space_heater_collective_heatpump_water_water_ts_electricity is pulled to max" do
      @scenario.buildings_heating_heat_pump_with_ts_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_space_heater_crude_oil is pulled to max" do
      @scenario.buildings_heating_oil_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_space_heater_electricity is pulled to max" do
      @scenario.buildings_heating_electric_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_space_heater_heatpump_air_water_network_gas is pulled to max" do
      @scenario.buildings_heating_gas_fired_heat_pump_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_space_heater_network_gas is pulled to max" do
      @scenario.buildings_heating_biomass_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_space_heater_solar_thermal is pulled to max" do
      @scenario.buildings_heating_solar_thermal_panels_share = 13.0 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the buildings_space_heater_wood_pellets is pulled to max" do
      @scenario.buildings_heating_biomass_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_chp_combined_cycle_gas_power_fuelmix is set to 2" do
      @scenario.number_of_large_gas_chp = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_chp_ultra_supercritical_coal is set to 52.9 " do
      @scenario.number_of_central_coal_chp = 52.9 #
      expect(@scenario.dashboard_employment).to change
    end

    # it "it should change total employment when the energy_chp_ultra_supercritical_lignite is set to 2" do
    #   @scenario.number_of_lignite_chp = 2 #
    #   expect(@scenario.dashboard_employment).to change
    # end

    it "it should change total employment when the energy_power_combined_cycle_ccs_coal is set to 2" do
      @scenario.number_of_coal_igcc_ccs = 2 #
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_combined_cycle_ccs_gas_power_fuelmix is set to 2" do
      @scenario.number_of_gas_ccgt_ccs = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_combined_cycle_coal is set to 2" do
      @scenario.number_of_coal_iggc = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_combined_cycle_gas_power_fuelmix is set to 2" do
      @scenario.number_of_gas_ccgt = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_geothermal is set to 2" do
      @scenario.number_of_geothermal_electric = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_nuclear_gen3_uranium_oxide is set to 2" do
      @scenario.number_of_nuclear_3rd_gen = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_solar_pv_solar_radiation is set to 2" do
      @scenario.number_of_solar_pv_plants = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_supercritical_coal is set to 2" do
      @scenario.number_of_coal_conventional = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_supercritical_waste_mix is set to 2" do
      @scenario.number_of_waste_incinerator = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_turbine_network_gas is set to 2" do
      @scenario.number_of_gas_turbines = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_ultra_supercritical_ccs_coal is set to 2" do
      @scenario.number_of_pulverized_coal_ccs = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_ultra_supercritical_coal is set to 2" do
      @scenario.number_of_pulverized_coal = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_ultra_supercritical_crude_oil is set to 2" do
      @scenario.number_of_oil_fired_plant = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_ultra_supercritical_gas_power_fuelmix is set to 2" do
      @scenario.number_of_gas_conventional = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    # it "it should change total employment when the energy_power_ultra_supercritical_lignite is set to 2" do
    #   @scenario.number_of_coal_lignite = 2.0 # number
    #   expect(@scenario.dashboard_employment).to change
    # end

    # it "it should change total employment when the energy_power_ultra_supercritical_oxyfuel_ccs_lignite is set to 2" do
    #   @scenario.number_of_coal_oxyfuel_ccs = 2.0 # number
    #   expect(@scenario.dashboard_employment).to change
    # end

    it "it should change total employment when the energy_power_wind_turbine_coastal is set to 2" do
      @scenario.number_of_wind_onshore_coast = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_wind_turbine_inland is set to 2" do
      @scenario.number_of_wind_onshore_land = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the energy_power_wind_turbine_offshore is set to 2" do
      @scenario.number_of_wind_offshore = 2.0 # number
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_collective_geothermal is pulled to max" do
      @scenario.households_heating_geothermal_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_collective_chp_network_gas is pulled to max" do
      @scenario.households_heating_small_gas_chp_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_collective_chp_wood_pellets is pulled to max" do
      @scenario.households_heating_biomass_chp_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_cooling_airconditioning_electricity is pulled to min" do
      @scenario.households_cooling_airconditioning_share = 60 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_cooling_heatpump_air_water_electricity is pulled to max" do
      @scenario.households_cooling_heatpump_air_water_electricity_share = 20 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_cooling_heatpump_ground_water_electricity is pulled to max" do
      @scenario.households_cooling_heat_pump_ground_share = 20 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_solar_pv_solar_radiation is pulled to max" do
      @scenario.households_market_penetration_solar_panels = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_coal is pulled to max" do
      @scenario.households_heating_coal_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_heatpump_air_water_electricity is pulled to max" do
      @scenario.households_space_heater_heatpump_air_water_electricity_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_combined_network_gas is pulled to max" do
      @scenario.households_heating_gas_combi_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_crude_oil is pulled to max" do
      @scenario.households_heating_oil_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_district_heating_steam_hot_water is pulled to max" do
      @scenario.households_heating_district_heating_network_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_electricity is pulled to max" do
      @scenario.households_heating_electric_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_heatpump_ground_water_electricity is pulled to max" do
      @scenario.households_heating_heat_pump_ground_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_micro_chp_network_gas is pulled to max" do
      @scenario.households_heating_micro_chp_share = 50 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_network_gas is pulled to max" do
      @scenario.households_heating_gas_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_space_heater_wood_pellets is pulled to max" do
      @scenario.households_heating_pellet_stove_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_coal is pulled to max" do
      @scenario.households_hot_water_coal_fired_heater_hotwater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_combined_network_gas is pulled to max" do
      @scenario.households_hot_water_gas_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_crude_oil is pulled to max" do
      @scenario.households_hot_water_oil_fired_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_district_heating_steam_hot_water is pulled to max" do
      @scenario.households_hot_water_heat_network_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_fuel_cell_chp_network_gas is pulled to max" do
      @scenario.households_hot_water_fuel_cell_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_heatpump_air_water_electricity is pulled to max" do
      @scenario.households_water_heater_heatpump_air_water_electricity_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_heatpump_ground_water_electricity is pulled to max" do
      @scenario.households_water_heater_heatpump_ground_water_electricity_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_micro_chp_network_gas is pulled to max" do
      @scenario.households_hot_water_micro_chp_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_resistive_electricity is pulled to max" do
      @scenario.households_hot_water_electric_boiler_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_solar_thermal is pulled to max" do
      @scenario.households_heating_solar_thermal_panels_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end

    it "it should change total employment when the households_water_heater_wood_pellets is pulled to max" do
      @scenario.households_hot_water_biomass_heater_share = 100 #%
      expect(@scenario.dashboard_employment).to change
    end
  end
end
