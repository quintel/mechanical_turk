require 'spec_helper'

describe "Network costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "In a start scenario" do
    it "no infrastructure investments should be needed" do
      expect(@scenario.lv_net_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.lv_mv_transformer_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_net_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.mv_hv_transformer_in_additional_infrastructure_investments.value).to be == 0.0
      expect(@scenario.hv_net_in_additional_infrastructure_investments.value).to be == 0.0
    end
  end

end

describe "Starting with a scenario where all household space heating is electric" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      households_heater_electricity_share: 100,
      settings_enable_merit_order: 0
    })
  end


  context "when households heating stay on electric heating" do
    it "should increase all network total cost" do
      expect(@scenario.network_calculation_total_costs_future).to increase
    end
  end


  context "when transport with cars used all electric" do
    it "should increase all network total cost" do
      @scenario.transport_car_using_electricity_share = 100.0
      @scenario.transport_car_using_diesel_mix_share = 0.0
      @scenario.transport_car_using_gasoline_mix_share = 0.0
      @scenario.transport_car_using_lpg_share = 0.0
      @scenario.transport_car_using_compressed_natural_gas_share = 0.0

      expect(@scenario.network_calculation_total_costs_future).to increase
    end
  end

  context "when building heat micro chp 25 %" do
    it "should decrease all network total cost" do
      @scenario.households_heater_electricity_share = 75.0

      expect(@scenario.network_calculation_total_costs_future).to decrease
    end
  end

  context "when building heat pump with ts 100%" do
     it "should increase all network total cost" do
       @scenario.buildings_space_heater_network_gas_share = 0.0
       @scenario.buildings_space_heater_collective_heatpump_water_water_ts_electricity_share = 100.0
       @scenario.buildings_space_heater_heatpump_air_water_network_gas_share = 0.0
       @scenario.buildings_space_heater_electricity_share = 0.0
       @scenario.buildings_space_heater_wood_pellets_share = 0.0
       @scenario.buildings_space_heater_district_heating_steam_hot_water_share = 0.0
       @scenario.buildings_space_heater_solar_thermal_share = 0.0

       expect(@scenario.network_calculation_total_costs_future).to increase
     end
   end

   context "when building electric heater 100%" do
      it "should increase all network total cost" do
        @scenario.buildings_space_heater_network_gas_share = 0.0
        @scenario.buildings_space_heater_collective_heatpump_water_water_ts_electricity_share = 0.0
        @scenario.buildings_space_heater_heatpump_air_water_network_gas_share = 0.0
        @scenario.buildings_space_heater_electricity_share = 100.0
        @scenario.buildings_space_heater_wood_pellets_share = 0.0
        @scenario.buildings_space_heater_district_heating_steam_hot_water_share = 0.0
        @scenario.buildings_space_heater_solar_thermal_share = 0.0

        expect(@scenario.network_calculation_total_costs_future).to increase
      end
    end

    context "when agriculture small gas chp increases" do
      it "should decrease all network total cost" do
        pending("Outdated test - should be capacity_of_energy_chp_local_network_gas??")
        @scenario.capacity_of_agriculture_chp_engine_network_gas = 4000.0

        expect(@scenario.network_calculation_total_costs_future).to decrease
      end
    end

    context "when industry coal chp increases" do
      it "should decrease hv network electricity demand" do
        pending("Check if input is still valid")
        @scenario.capacity_of_industry_chp_ultra_supercritical_coal = 1000.0

        expect(@scenario.turk_hv_network_electricity_demand).to decrease
      end
    end

    context "when local production with solar PV increases" do
      it "should decrease all network total cost" do
        @scenario.households_solar_pv_solar_radiation_market_penetration = 100.0

        expect(@scenario.network_calculation_total_costs_future).to decrease
      end
    end

end
