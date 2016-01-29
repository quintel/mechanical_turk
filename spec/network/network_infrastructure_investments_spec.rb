require 'spec_helper'

describe "Network costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "In a start scenario" do
    it "no infrastructure investments should be needed" do
      expect(@scenario.lv_net_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.lv_mv_transformer_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_distribution_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_transport_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_hv_transformer_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.hv_net_in_additional_infrastructure_investments.value).to be == 0.0
    end
  end

end

describe "Starting with a scenario where all household space heating is electric" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      households_space_heater_electricity_share: 100
    })
  end


  context "when households heating stay on electric heating" do
    it "should increase all network total cost" do
      expect(@scenario.network_total_costs).to increase
    end
  end


  context "when transport with cars used all electric" do
    it "should increase all network total cost" do
      @scenario.transport_car_using_electricity_share = 100.0
      @scenario.transport_car_using_diesel_mix_share = 0.0
      @scenario.transport_car_using_gasoline_mix_share = 0.0
      @scenario.transport_car_using_lpg_share = 0.0
      @scenario.transport_car_using_compressed_natural_gas_share = 0.0

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
       @scenario.buildings_space_heater_wood_pellets_share = 0.0
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
        @scenario.buildings_space_heater_wood_pellets_share = 0.0
        @scenario.buildings_space_heater_district_heating_steam_hot_water_share = 0.0
        @scenario.buildings_space_heater_solar_thermal_share = 0.0

        expect(@scenario.network_total_costs).to increase
      end
    end

    context "when agriculture small gas chp increases" do
      it "should decrease all network total cost" do
        @scenario.number_of_agriculture_chp_engine_network_gas = 2000

        expect(@scenario.network_total_costs).to decrease
      end
    end

    context "when industry gas chp increases" do
      it "should decrease all network total cost" do
        @scenario.number_of_industry_chp_combined_cycle_gas_power_fuelmix = 49.0

        expect(@scenario.network_total_costs).to decrease
      end
    end

    context "when wind onshore increases" do
      it "should decrease all network total cost" do
        @scenario.number_of_energy_power_wind_turbine_coastal = 1000

        expect(@scenario.network_total_costs).to decrease
      end
    end

end