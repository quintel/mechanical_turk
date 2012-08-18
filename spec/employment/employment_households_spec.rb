#

require 'spec_helper'

describe "Households, Space Heating" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  context "for the start scenario" do

    # For every space heating technology, the turk_number_of_units should go to #HHs when slider = 100%
    # it "number of households_space_heater_combined_network_gas should be #HHs (7349500.0)" do
    #   @scenario.households_heating_gas_combi_heater_share = 100 #%
    #   @scenario.turk_number_of_households_space_heater_combined_network_gas.value.should be_within(10.0).of(7349500.0)
    # end

    it "turk_full_load_hours_of_households_space_heater_electricity" do
  @scenario.households_heating_electric_heater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_space_heater_electricity.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_electricity" do
  @scenario.households_heating_electric_heater_share = 100 #%
  @scenario.turk_number_of_units_of_households_space_heater_electricity.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_space_heater_heatpump_ground_water_electricity" do
  @scenario.households_heating_heat_pump_ground_share = 100 #%
  @scenario.turk_full_load_hours_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_heatpump_ground_water_electricity" do
  @scenario.households_heating_heat_pump_ground_share = 100 #%
  @scenario.turk_number_of_units_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_space_heater_wood_pellets" do
  @scenario.households_heating_pellet_stove_share = 100 #%
  @scenario.turk_full_load_hours_of_households_space_heater_wood_pellets.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_wood_pellets" do
  @scenario.households_heating_pellet_stove_share = 100 #%
  @scenario.turk_number_of_units_of_households_space_heater_wood_pellets.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_space_heater_coal" do
  @scenario.households_heating_coal_fired_heater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_space_heater_coal.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_coal" do
  @scenario.households_heating_coal_fired_heater_share = 100 #%
  @scenario.turk_number_of_units_of_households_space_heater_coal.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_space_heater_crude_oil" do
  @scenario.households_heating_oil_fired_heater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_space_heater_crude_oil.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_crude_oil" do
  @scenario.households_heating_oil_fired_heater_share = 100 #%
  @scenario.turk_number_of_units_of_households_space_heater_crude_oil.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_space_heater_heatpump_air_water_electricity" do
  @scenario.households_space_heater_heatpump_air_water_electricity_share = 100 #%
  @scenario.turk_full_load_hours_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_heatpump_air_water_electricity" do
  @scenario.households_space_heater_heatpump_air_water_electricity_share = 100 #%
  @scenario.turk_number_of_units_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_space_heater_micro_chp_network_gas" do
  @scenario.households_heating_micro_chp_share = 50 #%
  @scenario.turk_full_load_hours_of_households_space_heater_micro_chp_network_gas.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_micro_chp_network_gas" do
  @scenario.households_heating_micro_chp_share = 50 #%
  @scenario.turk_number_of_units_of_households_space_heater_micro_chp_network_gas.value.should be_within(10.0).of(3674750.0)
end

it "turk_full_load_hours_of_households_space_heater_network_gas" do
  @scenario.households_heating_gas_fired_heater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_space_heater_network_gas.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_space_heater_network_gas" do
  @scenario.households_heating_gas_fired_heater_share = 100 #%
  @scenario.turk_number_of_units_of_households_space_heater_network_gas.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_water_heater_resistive_electricity" do
  @scenario.households_hot_water_electric_boiler_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_resistive_electricity.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_water_heater_resistive_electricity" do
  @scenario.households_hot_water_electric_boiler_share = 100 #%
  @scenario.turk_number_of_units_of_households_water_heater_resistive_electricity.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_water_heater_wood_pellets" do
  @scenario.households_hot_water_biomass_heater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_wood_pellets.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_water_heater_wood_pellets" do
  @scenario.households_hot_water_biomass_heater_share = 100 #%
  @scenario.turk_number_of_units_of_households_water_heater_wood_pellets.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_water_heater_coal" do
  @scenario.households_hot_water_coal_fired_heater_hotwater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_coal.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_water_heater_coal" do
  @scenario.households_hot_water_coal_fired_heater_hotwater_share = 100 #%
  @scenario.turk_number_of_units_of_households_water_heater_coal.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_water_heater_crude_oil" do
  @scenario.households_hot_water_oil_fired_heater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_crude_oil.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_water_heater_crude_oil" do
  @scenario.households_hot_water_oil_fired_heater_share = 100 #%
  @scenario.turk_number_of_units_of_households_water_heater_crude_oil.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_water_heater_network_gas" do
  @scenario.households_hot_water_gas_water_heater_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_network_gas.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_water_heater_network_gas" do
  @scenario.households_hot_water_gas_water_heater_share = 100 #%
  @scenario.turk_number_of_units_of_households_water_heater_network_gas.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_water_heater_micro_chp_network_gas" do
  @scenario.households_hot_water_micro_chp_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_micro_chp_network_gas.value.should be_within(4380.0).of(4380.0)
end

it "turk_full_load_hours_of_households_water_heater_fuel_cell_chp_network_gas" do
  @scenario.households_hot_water_fuel_cell_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_water_heater_fuel_cell_chp_network_gas" do
  @scenario.households_hot_water_fuel_cell_share = 100 #%
  @scenario.turk_number_of_units_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(10.0).of(7349500.0)
end

it "turk_full_load_hours_of_households_water_heater_heatpump_air_water_electricity" do
  @scenario.households_water_heater_heatpump_air_water_electricity_share = 100 #%
  @scenario.turk_full_load_hours_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(4380.0).of(4380.0)
end

it "turk_number_of_units_of_households_water_heater_heatpump_air_water_electricity" do
  @scenario.households_water_heater_heatpump_air_water_electricity_share = 100 #%
  @scenario.turk_number_of_units_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(10.0).of(7349500.0)
end


    it "number of households_space_heater_wood_pellets should be #HHs (7349500.0)" do
      @scenario.households_heating_pellet_stove_share = 100 #%
      @scenario.turk_number_of_households_space_heater_wood_pellets.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_coal should be #HHs (7349500.0)" do
      @scenario.households_heating_coal_fired_heater_share = 100 #%
      @scenario.turk_number_of_households_space_heater_coal.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_crude_oil should be #HHs (7349500.0)" do
      @scenario.households_heating_oil_fired_heater_share = 100 #%
      @scenario.turk_number_of_households_space_heater_crude_oil.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_heatpump_air_water_electricity should be #HHs (7349500.0)" do
      @scenario.households_space_heater_heatpump_air_water_electricity_share  = 100 #%
      @scenario.turk_number_of_units_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_micro_chp_network_gas should be #HHs/2 = 3674750" do
      @scenario.households_heating_micro_chp_share = 50 #%
      @scenario.turk_number_of_households_space_heater_micro_chp_network_gas.value.should be_within(10.0).of(3674750)
    end

    it "number of households_space_heater_electricity should be #HHs (7349500.0)" do
      @scenario.households_heating_electric_heater_share = 100 #%
      @scenario.turk_number_of_households_space_heater_electricity.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_network_gas should be #HHs (7349500.0)" do
      @scenario.households_heating_gas_fired_heater_share = 100 #%
      @scenario.turk_number_of_households_space_heater_network_gas.value.should be_within(10.0).of(7349500.0)
    end




    # For every hot water technology, the turk_number_of_units should go to #HHs when slider = 100%
    it "number of households_water_heater_heatpump_air_water_electricity should be #HHs (7349500.0)" do
      @scenario.households_water_heater_heatpump_air_water_electricity_share  = 100 #%
      @scenario.turk_number_of_units_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(10.0).of(7349500.0)
    end



    # The overall employment should change with different sliders
    it "should decrease employment when the Electric heater is pulled to max" do
      @scenario.households_heating_electric_heater_share = 100 #%
      @scenario.dashboard_employment.should decrease
    end


  end

end
