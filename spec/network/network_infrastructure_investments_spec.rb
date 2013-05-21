require 'spec_helper'

describe "network infrastructure investments" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2040)
    @scenario.households_space_heater_combined_network_gas_share = 0.0
    @scenario.households_space_heater_heatpump_ground_water_electricity_share = 0.0
    @scenario.households_space_heater_district_heating_steam_hot_water_share = 0.0
    @scenario.households_space_heater_wood_pellets_share = 0.0
    @scenario.households_space_heater_electricity_share = 100.0
    @scenario.households_space_heater_network_gas_share = 0.0
    @scenario.households_space_heater_crude_oil_share = 0.0
    @scenario.households_space_heater_coal_share = 0.0
    @scenario.households_space_heater_micro_chp_network_gas_share = 0.0

    expect(@scenario.network_total_costs).to increase
  end


  context "start scenario" do
    it "no infrastructure investments needed" do
      @scenario.households_space_heater_combined_network_gas_share = 82.1
      @scenario.households_space_heater_heatpump_ground_water_electricity_share = 0.1
      @scenario.households_space_heater_district_heating_steam_hot_water_share = 3.0
      @scenario.households_space_heater_wood_pellets_share = 2.6
      @scenario.households_space_heater_electricity_share = 1.8
      @scenario.households_space_heater_network_gas_share = 9.1
      @scenario.households_space_heater_crude_oil_share = 1.2
      @scenario.households_space_heater_coal_share = 0.1
      @scenario.households_space_heater_micro_chp_network_gas_share = 0.0

      expect(@scenario.lv_net_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.lv_mv_transformer_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_distribution_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_transport_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_hv_transformer_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.hv_net_in_additional_infrastructure_investments.value).to be == 0.0    end
  end


  context "when households heating got to electric heating" do
    it "should increase all network total cost" do
      expect(@scenario.network_total_costs).to increase
    end
  end


  context "when transport with cars used all electric" do
    it "should increase all network total cost" do
      @scenario.transport_useful_demand_car_kms_electric_share = 100.0
      @scenario.transport_useful_demand_car_kms_diesel_share = 0.0
      @scenario.transport_useful_demand_car_kms_gasoline_share = 0.0
      @scenario.transport_useful_demand_car_kms_lpg_share = 0.0
      @scenario.transport_useful_demand_car_kms_compressed_gas_share = 0.0

      expect(@scenario.network_total_costs).to increase
    end
  end

  context "when building heat micro chp 25 %" do
    it "should decrease all network total cost" do
      @scenario.households_space_heater_electricity_share = 75.0
      @scenario.households_space_heater_micro_chp_network_gas_share = 25.0

      expect(@scenario.network_total_costs).to decrease
    end
  end

  context "when households hot water fuel cell 100%" do
    it "should decrease all network total cost" do
      @scenario.households_water_heater_combined_network_gas_share = 0.0
      @scenario.households_water_heater_district_heating_steam_hot_water_share = 0.0
      @scenario.households_water_heater_fuel_cell_chp_network_gas_share = 100.0
      @scenario.households_water_heater_resistive_electricity_share = 0.0
      @scenario.households_water_heater_network_gas_share = 0.0

      expect(@scenario.network_total_costs).to decrease
    end
  end

  context "when building heat pump with ts 100%" do
     it "should increase all network total cost" do
       @scenario.buildings_space_heater_network_gas_share = 0.0
       @scenario.buildings_space_heater_collective_heatpump_water_water_ts_electricity_share = 100.0
       @scenario.buildings_space_heater_heatpump_air_water_network_gas_share = 0.0
       @scenario.buildings_space_heater_electricity_share = 0.0
       @scenario.buildings_space_heater_crude_oil_share = 0.0
       @scenario.buildings_space_heater_district_heating_steam_hot_water_share = 0.0
       @scenario.buildings_space_heater_solar_thermal_share = 0.0

       expect(@scenario.network_total_costs).to increase
     end
   end

   context "when building electric heater 100%" do
      it "should increase all network total cost" do
        @scenario.buildings_space_heater_network_gas_share = 0.0
        @scenario.buildings_space_heater_collective_heatpump_water_water_ts_electricity_share = 0.0
        @scenario.buildings_space_heater_heatpump_air_water_network_gas_share = 0.0
        @scenario.buildings_space_heater_electricity_share = 100.0
        @scenario.buildings_space_heater_crude_oil_share = 0.0
        @scenario.buildings_space_heater_district_heating_steam_hot_water_share = 0.0
        @scenario.buildings_space_heater_solar_thermal_share = 0.0

        expect(@scenario.network_total_costs).to increase
      end
    end

    context "when building insulation 4" do
      it "should decrease all network total cost" do
        @scenario.buildings_insulation_level = 4.0

        expect(@scenario.network_total_costs).to decrease
      end
    end


    context "when agriculture  small gas chp increase" do
      it "should decrease all network total cost" do
        @scenario.number_of_agriculture_chp_engine_network_gas = 3000

        expect(@scenario.network_total_costs).to decrease
      end
    end

    context "when industry gas chp increase" do
      it "should decrease all network total cost" do
        @scenario.number_of_industry_chp_combined_cycle_gas_power_fuelmix = 70.0

        expect(@scenario.network_total_costs).to decrease
      end
    end

    context "when wind onshore increase" do
      it "should decrease all network total cost" do
        @scenario.number_of_energy_power_wind_turbine_coastal = 1000

        expect(@scenario.network_total_costs).to decrease
      end
    end


end
