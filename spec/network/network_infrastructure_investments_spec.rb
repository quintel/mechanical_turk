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
      settings_enable_merit_order: 1
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

  context "when building air heatpumps 25%" do
    it "should decrease all network total cost" do
      @scenario.households_heater_heatpump_air_water_electricity_share = 25.0
      @scenario.households_heater_electricity_share = 75.0

      expect(@scenario.network_calculation_total_costs_future).to decrease
    end
  end

  context "when building heat pump with ts 100%" do
     it "should increase all network total cost" do
       @scenario.buildings_space_heater_collective_heatpump_water_water_ts_electricity_share = 100.0

       expect(@scenario.network_calculation_total_costs_future).to increase
     end
   end

   context "when building electric heater 100%" do
      it "should increase all network total cost" do
        @scenario.buildings_space_heater_electricity_share = 100.0

        expect(@scenario.network_calculation_total_costs_future).to increase
      end
    end

    context "when local gas chp increases" do
      it "should decrease all network total cost" do
        @scenario.capacity_of_energy_chp_local_engine_network_gas = 8000.0

        expect(@scenario.network_calculation_total_costs_future).to decrease
      end
    end

    context "when industry coal chp increases" do
      it "should decrease hv network electricity demand" do
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
