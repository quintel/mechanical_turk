#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 617084.0758" do
      @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(30854.20379).of(617084.0758)
    end

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 347932.5889" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(17396.629445).of(347932.5889)
    end

    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 524434.3319" do
      @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26221.716595).of(524434.3319)
    end

    it "total cost of agriculture_chp_engine_gas_power_fuelmix should be within 5.0% of 432370.2664" do
      @scenario.total_cost_of_agriculture_chp_engine_gas_power_fuelmix.value.should be_within(21618.513320000002).of(432370.2664)
    end

    it "total cost of agriculture_chp_engine_gas_power_fuelmix should be within 5.0% of 432370.2664" do
      @scenario.total_cost_of_agriculture_chp_engine_gas_power_fuelmix.value.should be_within(21618.513320000002).of(432370.2664)
    end

    it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
      @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
    end

    it "total cost of buildings_collective_chp_gas_power_fuelmix should be within 5.0% of 222371.4066" do
      @scenario.total_cost_of_buildings_collective_chp_gas_power_fuelmix.value.should be_within(11118.57033).of(222371.4066)
    end

    it "total cost of buildings_collective_chp_gas_power_fuelmix should be within 5.0% of 222371.4066" do
      @scenario.total_cost_of_buildings_collective_chp_gas_power_fuelmix.value.should be_within(11118.57033).of(222371.4066)
    end

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 63403922.66" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(3170196.133).of(63403922.66)
    end

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 63403922.66" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(3170196.133).of(63403922.66)
    end

    it "total cost of buildings_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of buildings_cooling_airconditioning should be within 5.0% of 199.0" do
      @scenario.total_cost_of_buildings_cooling_airconditioning.value.should be_within(9.950000000000001).of(199.0)
    end

    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 5.0% of 1314033.788" do
      @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(65701.6894).of(1314033.788)
    end

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 839860.0733" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(41993.003665000004).of(839860.0733)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 2545.292412" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(127.2646206).of(2545.292412)
    end

    it "total cost of buildings_space_heater_coal should be within 5.0% of 5041.137264" do
      @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(252.0568632).of(5041.137264)
    end

    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
      @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
    end

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 9093.962029" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(454.69810145).of(9093.962029)
    end

    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.72" do
      @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.786000000000001).of(195.72)
    end

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 2410325.795" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(120516.28975).of(2410325.795)
    end

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 2363.276535" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(118.16382675).of(2363.276535)
    end

    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.47" do
      @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.3735).of(13387.47)
    end

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9707.964825" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(485.39824124999996).of(9707.964825)
    end

    it "total cost of energy_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 239836732.1" do
      @scenario.total_cost_of_energy_chp_combined_cycle_gas_power_fuelmix.value.should be_within(11991836.605).of(239836732.1)
    end

    it "total cost of energy_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 239836732.1" do
      @scenario.total_cost_of_energy_chp_combined_cycle_gas_power_fuelmix.value.should be_within(11991836.605).of(239836732.1)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 257671362.7" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(12883568.135).of(257671362.7)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 257671362.7" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(12883568.135).of(257671362.7)
    end

    it "total cost of energy_chp_ultra_supercritical_crude_oil should be within 5.0% of 349836623.2" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_crude_oil.value.should be_within(17491831.16).of(349836623.2)
    end

    it "total cost of energy_chp_ultra_supercritical_crude_oil should be within 5.0% of 349836623.2" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_crude_oil.value.should be_within(17491831.16).of(349836623.2)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 135687530.7" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(6784376.535).of(135687530.7)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 135687530.7" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(6784376.535).of(135687530.7)
    end

    it "total cost of energy_chp_ultra_supercritical_wood_pellets should be within 5.0% of 84967798.36" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_wood_pellets.value.should be_within(4248389.9180000005).of(84967798.36)
    end

    it "total cost of energy_chp_ultra_supercritical_wood_pellets should be within 5.0% of 84967798.36" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_wood_pellets.value.should be_within(4248389.9180000005).of(84967798.36)
    end

    it "total cost of energy_heat_network_backup_heater_gas_power_fuelmix should be within 5.0% of 6958651.779" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_gas_power_fuelmix.value.should be_within(347932.58895).of(6958651.779)
    end

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 5375274.128" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(268763.70639999997).of(5375274.128)
    end

    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 13442305.78" do
      @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(672115.289).of(13442305.78)
    end

    it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 8290252.163" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(414512.60815).of(8290252.163)
    end

    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end

    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 9981498.52" do
      @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(499074.926).of(9981498.52)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 288360364.6" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(14418018.230000002).of(288360364.6)
    end

    it "total cost of energy_power_combined_cycle_ccs_gas_power_fuelmix should be within 5.0% of 256194199.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_gas_power_fuelmix.value.should be_within(12809709.990000002).of(256194199.8)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 250159557.9" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(12507977.895000001).of(250159557.9)
    end

    it "total cost of energy_power_combined_cycle_gas_power_fuelmix should be within 5.0% of 252993021.4" do
      @scenario.total_cost_of_energy_power_combined_cycle_gas_power_fuelmix.value.should be_within(12649651.07).of(252993021.4)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 305099325.1" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(15254966.255000003).of(305099325.1)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 9315783.898" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(465789.1949).of(9315783.898)
    end

    it "total cost of energy_power_hv_network_electricity should be within 5.0% of 47926596.97" do
      @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(2396329.8485).of(47926596.97)
    end

    it "total cost of energy_power_hydro_mountain should be within 5.0% of 56067143.15" do
      @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(2803357.1575).of(56067143.15)
    end

    it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
      @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
    end

    it "total cost of energy_power_lv_network_electricity should be within 5.0% of 1999.279402" do
      @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(99.9639701).of(1999.279402)
    end

    it "total cost of energy_power_mv_distribution_network_electricity should be within 5.0% of 7789.192549" do
      @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(389.45962745).of(7789.192549)
    end

    it "total cost of energy_power_mv_transport_network_electricity should be within 5.0% of 86884.46792" do
      @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(4344.223396).of(86884.46792)
    end

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 368825614.4" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(18441280.72).of(368825614.4)
    end

    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 650664222.6" do
      @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(32533211.130000003).of(650664222.6)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15154166.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(757708.3335000001).of(15154166.67)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 4236515.76" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(211825.788).of(4236515.76)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 184211558.7" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(9210577.935).of(184211558.7)
    end

    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27279530.95" do
      @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1363976.5475).of(27279530.95)
    end

    it "total cost of energy_power_transformer_lv_mv_electricity should be within 5.0% of 1999.279402" do
      @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(99.9639701).of(1999.279402)
    end

    it "total cost of energy_power_transformer_mv_hv_electricity should be within 5.0% of 321203.8165" do
      @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(16060.190825000001).of(321203.8165)
    end

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 17016304.68" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(850815.234).of(17016304.68)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 268082655.2" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(13404132.76).of(268082655.2)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 269651035.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(13482551.75).of(269651035.0)
    end

    it "total cost of energy_power_ultra_supercritical_cofiring_wood_pellets should be within 5.0% of 517642372.4" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_wood_pellets.value.should be_within(25882118.62).of(517642372.4)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 305099325.1" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(15254966.255000003).of(305099325.1)
    end

    it "total cost of energy_power_ultra_supercritical_gas_power_fuelmix should be within 5.0% of 101504776.4" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_gas_power_fuelmix.value.should be_within(5075238.82).of(101504776.4)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 182036601.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9101830.05).of(182036601.0)
    end

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 315359774.7" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15767988.735).of(315359774.7)
    end

    it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of energy_power_wind_turbine_inland should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
      @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
    end

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 254545.3493" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(12727.267465).of(254545.3493)
    end

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 61036124.54" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(3051806.227).of(61036124.54)
    end

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 61036124.54" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(3051806.227).of(61036124.54)
    end

    it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of households_cooling_airconditioning_electricity should be within 5.0% of 181.0" do
      @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(9.05).of(181.0)
    end

    it "total cost of households_cooling_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_heat_network_connection_steam_hot_water should be within 5.0% of 633.3333333" do
      @scenario.total_cost_of_households_heat_network_connection_steam_hot_water.value.should be_within(31.666666665000005).of(633.3333333)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 222.9245208" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(11.146226040000002).of(222.9245208)
    end

    it "total cost of households_space_heater_coal should be within 5.0% of 366.6265729" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(18.331328645).of(366.6265729)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 494.7975139" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(24.739875695000002).of(494.7975139)
    end

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 794.9939354" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(39.74969677000001).of(794.9939354)
    end

    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
      @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
    end

    it "total cost of households_space_heater_heatpump_add_on_electricity should be within 5.0% of 281.6666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_add_on_electricity.value.should be_within(14.083333335).of(281.6666667)
    end

    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_space_heater_network_gas should be within 5.0% of 553.5078509" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(27.675392545).of(553.5078509)
    end

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 807.6898519" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(40.384492595000005).of(807.6898519)
    end

    it "total cost of households_water_heater_coal should be within 5.0% of 231.0" do
      @scenario.total_cost_of_households_water_heater_coal.value.should be_within(11.55).of(231.0)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 316.5859657" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(15.829298285).of(316.5859657)
    end

    it "total cost of households_water_heater_crude_oil should be within 5.0% of 245.0" do
      @scenario.total_cost_of_households_water_heater_crude_oil.value.should be_within(12.25).of(245.0)
    end

    it "total cost of households_water_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_households_water_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
      @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
    end

    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
      @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
    end

    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 812.7135135" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(40.635675675).of(812.7135135)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_water_heater_network_gas should be within 5.0% of 190.94274" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(9.547137).of(190.94274)
    end

    it "total cost of households_water_heater_resistive_electricity should be within 5.0% of 14.68" do
      @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.734).of(14.68)
    end

    it "total cost of households_water_heater_solar_thermal should be within 5.0% of 95.53" do
      @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(4.7765).of(95.53)
    end

    it "total cost of households_water_heater_wood_pellets should be within 5.0% of 476.6108108" do
      @scenario.total_cost_of_households_water_heater_wood_pellets.value.should be_within(23.83054054).of(476.6108108)
    end

    it "total cost of industry_aluminium_burner should be within 5.0% of 6958651.779" do
      @scenario.total_cost_of_industry_aluminium_burner.value.should be_within(347932.58895).of(6958651.779)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 5081857.827" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(254092.89135).of(5081857.827)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 11766819.48" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(588340.974).of(11766819.48)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 6958651.779" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(347932.58895).of(6958651.779)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10094604.33" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(504730.21650000004).of(10094604.33)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 17699091.77" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(884954.5885000001).of(17699091.77)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 17699091.77" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(884954.5885000001).of(17699091.77)
    end

    it "total cost of industry_chp_supercritical_wood_pellets should be within 5.0% of 33335883.77" do
      @scenario.total_cost_of_industry_chp_supercritical_wood_pellets.value.should be_within(1666794.1885000002).of(33335883.77)
    end

    it "total cost of industry_chp_supercritical_wood_pellets should be within 5.0% of 33335883.77" do
      @scenario.total_cost_of_industry_chp_supercritical_wood_pellets.value.should be_within(1666794.1885000002).of(33335883.77)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 6539229.831" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(326961.49155000004).of(6539229.831)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 6539229.831" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(326961.49155000004).of(6539229.831)
    end

    it "total cost of industry_other_metals_burner should be within 5.0% of 6958651.779" do
      @scenario.total_cost_of_industry_other_metals_burner.value.should be_within(347932.58895).of(6958651.779)
    end

    it "total cost of industry_steel_blastfurnace_burner should be within 5.0% of 4518545.444" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner.value.should be_within(225927.2722).of(4518545.444)
    end

    it "total cost of industry_steel_electricfurnace_burner should be within 5.0% of 6958651.779" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner.value.should be_within(347932.58895).of(6958651.779)
    end

    it "total cost of other_burner_coal should be within 5.0% of 5081857.827" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(254092.89135).of(5081857.827)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 617084.0758" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(30854.20379).of(617084.0758)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 347932.5889" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(17396.629445).of(347932.5889)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 524434.3319" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26221.716595).of(524434.3319)
    end

    it "total cost of other_chp_engine_gas_power_fuelmix should be within 5.0% of 200638.1854" do
      @scenario.total_cost_of_other_chp_engine_gas_power_fuelmix.value.should be_within(10031.90927).of(200638.1854)
    end

    it "total cost of other_chp_engine_gas_power_fuelmix should be within 5.0% of 200638.1854" do
      @scenario.total_cost_of_other_chp_engine_gas_power_fuelmix.value.should be_within(10031.90927).of(200638.1854)
    end

    it "total cost of other_chp_supercritical_wood_pellets should be within 5.0% of 65940849.21" do
      @scenario.total_cost_of_other_chp_supercritical_wood_pellets.value.should be_within(3297042.4605).of(65940849.21)
    end

    it "total cost of other_chp_supercritical_wood_pellets should be within 5.0% of 65940849.21" do
      @scenario.total_cost_of_other_chp_supercritical_wood_pellets.value.should be_within(3297042.4605).of(65940849.21)
    end
  end
end
