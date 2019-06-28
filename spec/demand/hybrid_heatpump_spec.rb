# Relevant sliders #336, #337, #639, #640, containing the HHP insulation formula

require 'spec_helper'

describe "Hybrid heat pump" do

  context "Hybrid heat pump general fever/merit order disabled" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {settings_enable_merit_order: 0})
    end

    describe "Removing all residences" do

      it "should give the initial input shares" do
        # destroying all houses
        @scenario.households_number_of_apartments = 0.0
        @scenario.households_number_of_corner_houses = 0.0
        @scenario.households_number_of_detached_houses = 0.0
        @scenario.households_number_of_semi_detached_houses = 0.0
        @scenario.households_number_of_terraced_houses = 0.0

        # should give us the initial input shares
        expect(@scenario.turk_hhp_network_gas_input_share.increase).to be == 0.0
        expect(@scenario.turk_hhp_electricity_input_share.increase).to be == 0.0
        # we expect a zero change, but due to the COP being defined in excel and exported to ETSource
        # and then reconstructed in the input statement we observe a very small deviation
        expect(@scenario.turk_hhp_ambient_heat_input_share.increase).to be < 1.0E-12
      end
    end

    describe "Changing the insulation or number_of_houses sliders" do

      it "should not change the HHP's COP" do
        # move residence sliders
        @scenario.households_number_of_apartments = 1.7E6
        @scenario.households_number_of_corner_houses = 6.8E6
        @scenario.households_number_of_detached_houses = 3.0E6
        @scenario.households_number_of_semi_detached_houses = 5.7E6
        @scenario.households_number_of_terraced_houses = 3.2E6

        # move insulation sliders
        @scenario.households_insulation_level_apartments = 14
        @scenario.households_insulation_level_corner_houses = 12
        @scenario.households_insulation_level_detached_houses = 15
        @scenario.households_insulation_level_semi_detached_houses = 17
        @scenario.households_insulation_level_terraced_houses = 16

        # then we expect the COP to stay constant (but we have a very small change, see line 21-22)
        expect(@scenario.turk_hhp_cop_constant.increase).to be < 1.0E-12
      end
    end

    describe "Resetting sliders to their initial conditions" do

      it "should return the initial shares" do
        # move residence sliders
        @scenario.households_number_of_apartments = 1.9E6
        @scenario.households_number_of_corner_houses = 7.6E6
        @scenario.households_number_of_detached_houses = 2.1E6
        @scenario.households_number_of_semi_detached_houses = 7.8E6
        @scenario.households_number_of_terraced_houses = 3.1E6

        # move insulation sliders
        @scenario.households_insulation_level_apartments = 14
        @scenario.households_insulation_level_corner_houses = 12
        @scenario.households_insulation_level_detached_houses = 15
        @scenario.households_insulation_level_semi_detached_houses = 17
        @scenario.households_insulation_level_terraced_houses = 16

        # setting residence sliders back to their original values
        @scenario.households_number_of_apartments = 2676274.9028
        @scenario.households_number_of_corner_houses = 980364.9488
        @scenario.households_number_of_detached_houses = 1016787.176
        @scenario.households_number_of_semi_detached_houses = 666982.0356
        @scenario.households_number_of_terraced_houses = 2247554.9368

        # setting insulation sliders back to their original values
        @scenario.households_insulation_level_apartments = 13
        @scenario.households_insulation_level_corner_houses = 9
        @scenario.households_insulation_level_detached_houses = 11
        @scenario.households_insulation_level_semi_detached_houses = 13
        @scenario.households_insulation_level_terraced_houses = 13

        # should then also give us their initial values
        expect(@scenario.turk_hhp_network_gas_input_share.increase).to be == 0.0
        expect(@scenario.turk_hhp_electricity_input_share.increase).to be == 0.0
        # for the ambient_heat input share we have a very small deviation as explained in line 21-22
        expect(@scenario.turk_hhp_ambient_heat_input_share.increase).to be < 1.0E-12

      end
    end
  end

  context "Hybrid heat pump general fever/merit order enabled" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
    end

    describe "Setting the relevant HHP sliders" do

    it "should change the shares of gas, electricity and ambient_heat by the correct amount" do
        # decrease numbers of residences
        @scenario.households_number_of_apartments = 1.8E6
        @scenario.households_number_of_corner_houses = 0.5E6
        @scenario.households_number_of_detached_houses = 0.6E6
        @scenario.households_number_of_semi_detached_houses = 0.3E6
        @scenario.households_number_of_terraced_houses = 1.2E6

        # increase insulation levels
        @scenario.households_insulation_level_apartments = 15
        @scenario.households_insulation_level_corner_houses = 11
        @scenario.households_insulation_level_detached_houses = 13
        @scenario.households_insulation_level_semi_detached_houses = 15
        @scenario.households_insulation_level_terraced_houses = 15

        # we expect the gas share to decrease due to insulation and
        # the decrease in number of houses (and hence, a decrease in network gas demand)
        expect(@scenario.turk_hhp_network_gas_input_share.increase).to be_within(1.0E-12).of -0.005555479429
        # then the ambient_heat and electricity share grow by this value, distributed in agreement with the COP
        # the small window of 1.0E-12 is there because of the COP calculation
        expect(@scenario.turk_hhp_electricity_input_share.increase).to be_within(1.0E-12).of 0.001556406419
        expect(@scenario.turk_hhp_ambient_heat_input_share.increase).to be_within(1.0E-12).of 0.00399907301
      end
    end
  end

  context "Hybrid heat pump COP" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
      households_heater_hybrid_heatpump_air_water_electricity_share: 100.0, #setting HHP's for space heating and hot water to 100%,
      households_flexibility_space_heating_cop_cutoff: 6.0, # setting the cut-off COP to 6.0
      households_flexibility_water_heating_cop_cutoff: 6.0 # setting the cut-off COP to 6.0
      })
    end

    describe "HHP for hot water with cut-off COP of 6.0" do
      it "should behave in the same way as combi-boilers" do

       @scenario.households_heater_combined_network_gas_share = 100.0
       @scenario.households_heater_hybrid_heatpump_air_water_electricity_share = 0.0

       expect(@scenario.natural_gas_and_derivatives_used_for_heating_in_households).to not_change
      end
    end

    describe "HHP for space heating with cut-off COP of 6.0" do
      it "should behave in the same way as combi-boilers" do
       @scenario.households_heater_combined_network_gas_share = 100.0
       @scenario.households_heater_hybrid_heatpump_air_water_electricity_share = 0.0

       expect(@scenario.natural_gas_and_derivatives_used_for_hot_water_in_households).to not_change
      end
    end

    describe "Lowering the cut-off COP for hot water to 1.0" do
      it "should result in less gas use for hot water" do
        @scenario.households_flexibility_water_heating_cop_cutoff = 1.0

        expect(@scenario.natural_gas_and_derivatives_used_for_hot_water_in_households). to decrease
      end
    end

    describe "Lowering the cut-off COP for space heating to 1.0" do
      it "should result in less gas use for space heating" do
        @scenario.households_flexibility_space_heating_cop_cutoff = 1.0

        expect(@scenario.natural_gas_and_derivatives_used_for_heating_in_households). to decrease
      end
    end
  end

 context "Hybrid heat gas usage" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
      households_heater_hybrid_heatpump_air_water_electricity_share: 100.0, #setting HHP's for space heating and hot water to 100%,
      households_flexibility_space_heating_cop_cutoff: 1.0, # setting the cut-off COP to 1.0
      households_flexibility_water_heating_cop_cutoff: 1.0 # setting the cut-off COP to 1.0
      })
    end

    describe "HHP for hot water with cut-off COP of 6.0" do
      it "should result in more gas use by HHP's" do
       @scenario.households_useful_demand_hot_water_share = 5.0

       expect(@scenario.turk_hhp_network_gas_input_share).to increase
      end
    end

    describe "Increasing the demand for space heating" do
      it "should result in more gas use by HHP's" do
       @scenario.households_useful_demand_heat_per_person = 5.0

       expect(@scenario.turk_hhp_network_gas_input_share).to increase
      end
    end

    describe "Changing to space heating profile 1987 and adjusting outdoor termperature accordingly" do
      it "should result in more gas use by HHP's" do
       @scenario.settings_heat_curve_set = 1.0
       @scenario.households_climate_influence = -2.0

       expect(@scenario.turk_hhp_network_gas_input_share).to increase
      end
    end
  end
end
