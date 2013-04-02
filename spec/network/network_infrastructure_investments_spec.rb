require 'spec_helper'

describe "network infrastructure investments" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2040)
    @scenario.households_heating_gas_combi_heater_share = 0.0
    @scenario.households_heating_heat_pump_ground_share = 0.0
    @scenario.households_heating_district_heating_network_share = 0.0
    @scenario.households_heating_pellet_stove_share = 0.0
    @scenario.households_heating_electric_heater_share = 100.0
    @scenario.households_heating_gas_fired_heater_share = 0.0
    @scenario.households_heating_oil_fired_heater_share = 0.0
    @scenario.households_heating_coal_fired_heater_share = 0.0
    @scenario.households_heating_micro_chp_share = 0.0

    expect(@scenario.network_total_costs).to increase
  end


  context "start scenario" do
    it "no infrastructure investments needed" do
      @scenario.households_heating_gas_combi_heater_share = 82.1
      @scenario.households_heating_heat_pump_ground_share = 0.1
      @scenario.households_heating_district_heating_network_share = 3.0
      @scenario.households_heating_pellet_stove_share = 2.6
      @scenario.households_heating_electric_heater_share = 1.8
      @scenario.households_heating_gas_fired_heater_share = 9.1
      @scenario.households_heating_oil_fired_heater_share = 1.2
      @scenario.households_heating_coal_fired_heater_share = 0.1
      @scenario.households_heating_micro_chp_share = 0.0

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
      @scenario.transport_cars_electric_share = 100.0
      @scenario.transport_cars_diesel_share = 0.0
      @scenario.transport_cars_gasoline_share = 0.0
      @scenario.transport_cars_lpg_share = 0.0
      @scenario.transport_cars_compressed_gas_share = 0.0

      expect(@scenario.network_total_costs).to increase
    end
  end

  context "when building heat micro chp 25 %" do
    it "should decrease all network total cost" do
      @scenario.households_heating_electric_heater_share = 75.0
      @scenario.households_heating_micro_chp_share = 25.0

      expect(@scenario.network_total_costs).to decrease
    end
  end

  context "when households hot water fuel cell 100%" do
    it "should decrease all network total cost" do
      @scenario.households_hot_water_gas_fired_heater_share = 0.0
      @scenario.households_hot_water_heat_network_share = 0.0
      @scenario.households_hot_water_fuel_cell_share = 100.0
      @scenario.households_hot_water_electric_boiler_share = 0.0
      @scenario.households_hot_water_gas_water_heater_share = 0.0

      expect(@scenario.network_total_costs).to decrease
    end
  end

  context "when building heat pump with ts 100%" do
     it "should increase all network total cost" do
       @scenario.buildings_heating_gas_fired_heater_share = 0.0
       @scenario.buildings_heating_heat_pump_with_ts_share = 100.0
       @scenario.buildings_heating_gas_fired_heat_pump_share = 0.0
       @scenario.buildings_heating_electric_heater_share = 0.0
       @scenario.buildings_heating_oil_fired_heater_share = 0.0
       @scenario.buildings_heating_district_heating_network_share = 0.0
       @scenario.buildings_heating_solar_thermal_panels_share = 0.0

       expect(@scenario.network_total_costs).to increase
     end
   end

   context "when building electric heater 100%" do
      it "should increase all network total cost" do
        @scenario.buildings_heating_gas_fired_heater_share = 0.0
        @scenario.buildings_heating_heat_pump_with_ts_share = 0.0
        @scenario.buildings_heating_gas_fired_heat_pump_share = 0.0
        @scenario.buildings_heating_electric_heater_share = 100.0
        @scenario.buildings_heating_oil_fired_heater_share = 0.0
        @scenario.buildings_heating_district_heating_network_share = 0.0
        @scenario.buildings_heating_solar_thermal_panels_share = 0.0

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
        @scenario.agriculture_number_of_small_gas_chp = 3000

        expect(@scenario.network_total_costs).to decrease
      end
    end

    context "when industry gas chp increase" do
      it "should decrease all network total cost" do
        @scenario.industry_number_of_gas_chp = 225.0

        expect(@scenario.network_total_costs).to decrease
      end
    end

    context "when wind onshore increase" do
      it "should decrease all network total cost" do
        @scenario.number_of_wind_onshore_coast = 1000

        expect(@scenario.network_total_costs).to decrease
      end
    end


end