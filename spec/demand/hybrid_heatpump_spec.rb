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
        @scenario.households_number_of_apartments_before_1945 = 0.0
        @scenario.households_number_of_apartments_1945_1964 = 0.0
        @scenario.households_number_of_apartments_1965_1984 = 0.0
        @scenario.households_number_of_apartments_1985_2004 = 0.0
        @scenario.households_number_of_apartments_2005_present = 0.0
        @scenario.households_number_of_apartments_future = 0.0
        @scenario.households_number_of_detached_houses_before_1945 = 0.0
        @scenario.households_number_of_detached_houses_1945_1964 = 0.0
        @scenario.households_number_of_detached_houses_1965_1984 = 0.0
        @scenario.households_number_of_detached_houses_1985_2004 = 0.0
        @scenario.households_number_of_detached_houses_2005_present = 0.0
        @scenario.households_number_of_detached_houses_future = 0.0
        @scenario.households_number_of_semi_detached_houses_before_1945 = 0.0
        @scenario.households_number_of_semi_detached_houses_1945_1964 = 0.0
        @scenario.households_number_of_semi_detached_houses_1965_1984 = 0.0
        @scenario.households_number_of_semi_detached_houses_1985_2004 = 0.0
        @scenario.households_number_of_semi_detached_houses_2005_present = 0.0
        @scenario.households_number_of_semi_detached_houses_future = 0.0
        @scenario.households_number_of_terraced_houses_before_1945 = 0.0
        @scenario.households_number_of_terraced_houses_1945_1964 = 0.0
        @scenario.households_number_of_terraced_houses_1965_1984 = 0.0
        @scenario.households_number_of_terraced_houses_1985_2004 = 0.0
        @scenario.households_number_of_terraced_houses_2005_present = 0.0
        @scenario.households_number_of_terraced_houses_future = 0.0

        # should give us the initial input shares
        expect(@scenario.turk_hhp_network_gas_input_share.increase).to be == 0.0
        expect(@scenario.turk_hhp_electricity_input_share.increase).to be == 0.0
        # we expect a zero change, but due to the COP being defined in excel and exported to ETSource
        # and then reconstructed in the input statement we observe a very small deviation
        expect(@scenario.turk_hhp_ambient_heat_input_share.increase).to be < 1.0E-12
      end
    end

    describe "Changing the insulation or number_of_residences sliders" do

      it "should not change the HHP's COP" do
        # move residence sliders
        @scenario.households_number_of_apartments_before_1945 = 516342 * 0.9
        @scenario.households_number_of_apartments_1945_1964 = 371806 * 0.9
        @scenario.households_number_of_apartments_1965_1984 = 729999 * 0.9
        @scenario.households_number_of_apartments_1985_2004 = 591948 * 0.9
        @scenario.households_number_of_apartments_2005_present = 466180 * 0.9
        @scenario.households_number_of_detached_houses_before_1945 = 178650 * 0.9
        @scenario.households_number_of_detached_houses_1945_1964 = 175973 * 0.9
        @scenario.households_number_of_detached_houses_1965_1984 = 333220 * 0.9
        @scenario.households_number_of_detached_houses_1985_2004 = 223668 * 0.9
        @scenario.households_number_of_detached_houses_2005_present = 105276 * 0.9
        @scenario.households_number_of_semi_detached_houses_before_1945 = 237409 * 0.9
        @scenario.households_number_of_semi_detached_houses_1945_1964 = 214301 * 0.9
        @scenario.households_number_of_semi_detached_houses_1965_1984 = 606264 * 0.9
        @scenario.households_number_of_semi_detached_houses_1985_2004 = 416081 * 0.9
        @scenario.households_number_of_semi_detached_houses_2005_present = 173292 * 0.9
        @scenario.households_number_of_terraced_houses_before_1945 = 622120 * 0.9
        @scenario.households_number_of_terraced_houses_1945_1964 = 312200 * 0.9
        @scenario.households_number_of_terraced_houses_1965_1984 = 504251 * 0.9
        @scenario.households_number_of_terraced_houses_1985_2004 = 550888 * 0.9
        @scenario.households_number_of_terraced_houses_2005_present = 258096 * 0.9

        # move insulation sliders
        @scenario.households_insulation_level_apartments_before_1945 = 309.2785 * 0.9
        @scenario.households_insulation_level_apartments_1945_1964 = 225.7048 * 0.9
        @scenario.households_insulation_level_apartments_1965_1984 = 193.542 * 0.9
        @scenario.households_insulation_level_apartments_1985_2004 = 154.5946 * 0.9
        @scenario.households_insulation_level_apartments_2005_present = 115.9263 * 0.9
        @scenario.households_insulation_level_detached_houses_before_1945 = 296.1239 * 0.9
        @scenario.households_insulation_level_detached_houses_1945_1964 = 243.2537 * 0.9
        @scenario.households_insulation_level_detached_houses_1965_1984 = 202.5222 * 0.9
        @scenario.households_insulation_level_detached_houses_1985_2004 = 160.3984 * 0.9
        @scenario.households_insulation_level_detached_houses_2005_present = 116.3707 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_before_1945 = 268.9665 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_1945_1964 = 217.0396 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_1965_1984 = 187.3579 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_1985_2004 = 154.0974 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_2005_present = 114.2388 * 0.9
        @scenario.households_insulation_level_terraced_houses_before_1945 = 305.0056 * 0.9
        @scenario.households_insulation_level_terraced_houses_1945_1964 = 280.6464 * 0.9
        @scenario.households_insulation_level_terraced_houses_1965_1984 = 217.9607 * 0.9
        @scenario.households_insulation_level_terraced_houses_1985_2004 = 150.8078 * 0.9
        @scenario.households_insulation_level_terraced_houses_2005_present = 116.2858 * 0.9

        # then we expect the COP to stay constant (but we have a very small change, see line 44-45)
        expect(@scenario.turk_hhp_cop_constant.increase).to be < 1.0E-12
      end
    end

    describe "Resetting sliders to their initial conditions" do

      it "should return the initial shares" do
        # move residence sliders
        @scenario.households_number_of_apartments_before_1945 = 516342 * 0.9
        @scenario.households_number_of_apartments_1945_1964 = 371806 * 0.9
        @scenario.households_number_of_apartments_1965_1984 = 729999 * 0.9
        @scenario.households_number_of_apartments_1985_2004 = 591948 * 0.9
        @scenario.households_number_of_apartments_2005_present = 466180 * 0.9
        @scenario.households_number_of_detached_houses_before_1945 = 178650 * 0.9
        @scenario.households_number_of_detached_houses_1945_1964 = 175973 * 0.9
        @scenario.households_number_of_detached_houses_1965_1984 = 333220 * 0.9
        @scenario.households_number_of_detached_houses_1985_2004 = 223668 * 0.9
        @scenario.households_number_of_detached_houses_2005_present = 105276 * 0.9
        @scenario.households_number_of_semi_detached_houses_before_1945 = 237409 * 0.9
        @scenario.households_number_of_semi_detached_houses_1945_1964 = 214301 * 0.9
        @scenario.households_number_of_semi_detached_houses_1965_1984 = 606264 * 0.9
        @scenario.households_number_of_semi_detached_houses_1985_2004 = 416081 * 0.9
        @scenario.households_number_of_semi_detached_houses_2005_present = 173292 * 0.9
        @scenario.households_number_of_terraced_houses_before_1945 = 622120 * 0.9
        @scenario.households_number_of_terraced_houses_1945_1964 = 312200 * 0.9
        @scenario.households_number_of_terraced_houses_1965_1984 = 504251 * 0.9
        @scenario.households_number_of_terraced_houses_1985_2004 = 550888 * 0.9
        @scenario.households_number_of_terraced_houses_2005_present = 258096 * 0.9

        # move insulation sliders
        @scenario.households_insulation_level_apartments_before_1945 = 309.2785 * 0.9
        @scenario.households_insulation_level_apartments_1945_1964 = 225.7048 * 0.9
        @scenario.households_insulation_level_apartments_1965_1984 = 193.542 * 0.9
        @scenario.households_insulation_level_apartments_1985_2004 = 154.5946 * 0.9
        @scenario.households_insulation_level_apartments_2005_present = 115.9263 * 0.9
        @scenario.households_insulation_level_detached_houses_before_1945 = 296.1239 * 0.9
        @scenario.households_insulation_level_detached_houses_1945_1964 = 243.2537 * 0.9
        @scenario.households_insulation_level_detached_houses_1965_1984 = 202.5222 * 0.9
        @scenario.households_insulation_level_detached_houses_1985_2004 = 160.3984 * 0.9
        @scenario.households_insulation_level_detached_houses_2005_present = 116.3707 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_before_1945 = 268.9665 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_1945_1964 = 217.0396 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_1965_1984 = 187.3579 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_1985_2004 = 154.0974 * 0.9
        @scenario.households_insulation_level_semi_detached_houses_2005_present = 114.2388 * 0.9
        @scenario.households_insulation_level_terraced_houses_before_1945 = 305.0056 * 0.9
        @scenario.households_insulation_level_terraced_houses_1945_1964 = 280.6464 * 0.9
        @scenario.households_insulation_level_terraced_houses_1965_1984 = 217.9607 * 0.9
        @scenario.households_insulation_level_terraced_houses_1985_2004 = 150.8078 * 0.9
        @scenario.households_insulation_level_terraced_houses_2005_present = 116.2858 * 0.9

        # setting residence slider back to their original values
        @scenario.households_number_of_apartments_before_1945 = 516342
        @scenario.households_number_of_apartments_1945_1964 = 371806
        @scenario.households_number_of_apartments_1965_1984 = 729999
        @scenario.households_number_of_apartments_1985_2004 = 591948
        @scenario.households_number_of_apartments_2005_present = 466180
        @scenario.households_number_of_detached_houses_before_1945 = 178650
        @scenario.households_number_of_detached_houses_1945_1964 = 175973
        @scenario.households_number_of_detached_houses_1965_1984 = 333220
        @scenario.households_number_of_detached_houses_1985_2004 = 223668
        @scenario.households_number_of_detached_houses_2005_present = 105276
        @scenario.households_number_of_semi_detached_houses_before_1945 = 237409
        @scenario.households_number_of_semi_detached_houses_1945_1964 = 214301
        @scenario.households_number_of_semi_detached_houses_1965_1984 = 606264
        @scenario.households_number_of_semi_detached_houses_1985_2004 = 416081
        @scenario.households_number_of_semi_detached_houses_2005_present = 173292
        @scenario.households_number_of_terraced_houses_before_1945 = 622120
        @scenario.households_number_of_terraced_houses_1945_1964 = 312200
        @scenario.households_number_of_terraced_houses_1965_1984 = 504251
        @scenario.households_number_of_terraced_houses_1985_2004 = 550888
        @scenario.households_number_of_terraced_houses_2005_present = 258096

        # setting insulation sliders back to their original values
        @scenario.households_insulation_level_apartments_before_1945 = 309.2785
        @scenario.households_insulation_level_apartments_1945_1964 = 225.7048
        @scenario.households_insulation_level_apartments_1965_1984 = 193.542
        @scenario.households_insulation_level_apartments_1985_2004 = 154.5946
        @scenario.households_insulation_level_apartments_2005_present = 115.9263
        @scenario.households_insulation_level_detached_houses_before_1945 = 296.1239
        @scenario.households_insulation_level_detached_houses_1945_1964 = 243.2537
        @scenario.households_insulation_level_detached_houses_1965_1984 = 202.5222
        @scenario.households_insulation_level_detached_houses_1985_2004 = 160.3984
        @scenario.households_insulation_level_detached_houses_2005_present = 116.3707
        @scenario.households_insulation_level_semi_detached_houses_before_1945 = 268.9665
        @scenario.households_insulation_level_semi_detached_houses_1945_1964 = 217.0396
        @scenario.households_insulation_level_semi_detached_houses_1965_1984 = 187.3579
        @scenario.households_insulation_level_semi_detached_houses_1985_2004 = 154.0974
        @scenario.households_insulation_level_semi_detached_houses_2005_present = 114.2388
        @scenario.households_insulation_level_terraced_houses_before_1945 = 305.0056
        @scenario.households_insulation_level_terraced_houses_1945_1964 = 280.6464
        @scenario.households_insulation_level_terraced_houses_1965_1984 = 217.9607
        @scenario.households_insulation_level_terraced_houses_1985_2004 = 150.8078
        @scenario.households_insulation_level_terraced_houses_2005_present = 116.2858

        # should then also give us their initial values
        expect(@scenario.turk_hhp_network_gas_input_share.increase).to be == 0.0
        expect(@scenario.turk_hhp_electricity_input_share.increase).to be == 0.0
        # for the ambient_heat input share we have a very small deviation as explained in line 44-45
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
      skip("ETEngine #1398")
        # increase insulation levels

        # @scenario.households_insulation_level_apartments = 15
        # for nl start value is 13
        # @scenario.households_insulation_level_corner_houses = 11
        # for nl start value is 9
        # @scenario.households_insulation_level_detached_houses = 13
        # for nl start value is 11
        # @scenario.households_insulation_level_semi_detached_houses = 15
        # for nl start value is 13
        # @scenario.households_insulation_level_terraced_houses = 15
        # for nl start value is 13

        @scenario.households_insulation_level_apartments_before_1945 = 309.2785 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_apartments_1945_1964 = 225.7048 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_apartments_1965_1984 = 193.542 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_apartments_1985_2004 = 154.5946 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_apartments_2005_present = 115.9263 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_detached_houses_before_1945 = 296.1239 * (100.0 - 13.0) / (100.0 - 11.0)
        @scenario.households_insulation_level_detached_houses_1945_1964 = 243.2537 * (100.0 - 13.0) / (100.0 - 11.0)
        @scenario.households_insulation_level_detached_houses_1965_1984 = 202.5222 * (100.0 - 13.0) / (100.0 - 11.0)
        @scenario.households_insulation_level_detached_houses_1985_2004 = 160.3984 * (100.0 - 13.0) / (100.0 - 11.0)
        @scenario.households_insulation_level_detached_houses_2005_present = 116.3707 * (100.0 - 13.0) / (100.0 - 11.0)
        @scenario.households_insulation_level_semi_detached_houses_before_1945 = 268.9665 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_semi_detached_houses_1945_1964 = 217.0396 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_semi_detached_houses_1965_1984 = 187.3579 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_semi_detached_houses_1985_2004 = 154.0974 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_semi_detached_houses_2005_present = 114.2388 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_terraced_houses_before_1945 = 305.0056 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_terraced_houses_1945_1964 = 280.6464 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_terraced_houses_1965_1984 = 217.9607 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_terraced_houses_1985_2004 = 150.8078 * (100.0 - 15.0) / (100.0 - 13.0)
        @scenario.households_insulation_level_terraced_houses_2005_present = 116.2858 * (100.0 - 15.0) / (100.0 - 13.0)

        # we expect the gas share to decrease due to insulation and
        # the decrease in number of houses (and hence, a decrease in network gas demand)
        expect(@scenario.turk_hhp_network_gas_input_share.increase).to be_within(1.0E-12).of -0.0005791348178179612
        # then the ambient_heat and electricity share grow by this value, distributed in agreement with the COP
        # the small window of 1.0E-12 is there because of the COP calculation
        expect(@scenario.turk_hhp_electricity_input_share.increase).to be_within(1.0E-12).of 0.0002160631521914147
        expect(@scenario.turk_hhp_ambient_heat_input_share.increase).to be_within(1.0E-12).of 0.0004036111028738465
      end
    end
  end

  context "Hybrid heat pump COP" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
      households_heater_hybrid_heatpump_air_water_electricity_share: 100.0, #setting HHP's for space heating and hot water to 100%,
      flexibility_heat_pump_space_heating_cop_cutoff: 6.0, # setting the cut-off COP to 6.0
      flexibility_heat_pump_water_heating_cop_cutoff: 6.0 # setting the cut-off COP to 6.0
      })
    end

    describe "HHP for hot water with cut-off COP of 6.0" do
      it "should behave in the same way as combi-boilers" do

       @scenario.households_heater_combined_network_gas_share = 100.0
       @scenario.households_heater_hybrid_heatpump_air_water_electricity_share = 0.0

       expect(@scenario.natural_gas_and_derivatives_used_for_heating_in_households.increase).to be_within(1.0E-12).of 0.0
      end
    end

    describe "HHP for space heating with cut-off COP of 6.0" do
      it "should behave in the same way as combi-boilers" do
       @scenario.households_heater_combined_network_gas_share = 100.0
       @scenario.households_heater_hybrid_heatpump_air_water_electricity_share = 0.0

       expect(@scenario.natural_gas_and_derivatives_used_for_hot_water_in_households.increase).to be_within(1.0E-12).of 0.0
      end
    end

    describe "Lowering the cut-off COP for hot water to 1.0" do
      it "should result in less gas use for hot water" do
        @scenario.flexibility_heat_pump_water_heating_cop_cutoff = 1.0

        expect(@scenario.natural_gas_and_derivatives_used_for_hot_water_in_households). to decrease
      end
    end

    describe "Lowering the cut-off COP for space heating to 1.0" do
      it "should result in less gas use for space heating" do
        @scenario.flexibility_heat_pump_space_heating_cop_cutoff = 1.0

        expect(@scenario.natural_gas_and_derivatives_used_for_heating_in_households). to decrease
      end
    end
  end

 context "Hybrid heat gas usage" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
      households_heater_hybrid_heatpump_air_water_electricity_share: 100.0, #setting HHP's for space heating and hot water to 100%,
      flexibility_heat_pump_space_heating_cop_cutoff: 1.0, # setting the cut-off COP to 1.0
      flexibility_heat_pump_water_heating_cop_cutoff: 1.0 # setting the cut-off COP to 1.0
      })
    end

    describe "HHP for hot water with cut-off COP of 6.0" do
      it "should result in more gas use by HHP's" do
       @scenario.households_useful_demand_hot_water_share = 5.0

       expect(@scenario.turk_hhp_network_gas_input_share).to increase
      end
    end

    describe "Changing to space heating profile 1987 and adjusting outdoor termperature accordingly" do
      it "should result in more gas use by HHP's" do
       @scenario.settings_weather_curve_set = 1987

       expect(@scenario.turk_hhp_network_gas_input_share).to increase
      end
    end
  end
end
