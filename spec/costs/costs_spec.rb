#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 755051.0485" do
      @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(37752.552425).of(755051.0485)
    end   

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 331312.3972" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(16565.619860000003).of(331312.3972)
    end   

    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 523510.371" do
      @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26175.51855).of(523510.371)
    end   

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 1796777.325" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(35057.943785).of(1796777.325)
    end   

    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 598514.1625" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(29925.708125).of(598514.1625)
    end   

    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2603019.547" do
      @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(130150.97735).of(2603019.547)
    end   

    it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end   

    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
      @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
    end   

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 1736777.32" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(32057.943785).of(1736777.32)
    end   

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 625460.1805" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(31273.009025000003).of(625460.1805)
    end   

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2579919.547" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(128995.97735).of(2579919.547)
    end   

    it "total cost of buildings_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end   

    it "total cost of buildings_cooling_airconditioning_electricity should be within 5.0% of 199.0" do
      @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(9.950000000000001).of(199.0)
    end   

    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 5.0% of 1314033.788" do
      @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(65701.6894).of(1314033.788)
    end   

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 825386.4443" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(41269.322215).of(825386.4443)
    end   

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end   

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 1716.42" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(85.82).of(1716.42)
    end   

    it "total cost of buildings_space_heater_coal should be within 5.0% of 4597.52495" do
      @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(229.8762475).of(4597.52495)
    end   

    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
      @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
    end   

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 10722.66641" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(536.1333205).of(10722.66641)
    end   

    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end   

    it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.75" do
      @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.787500000000001).of(195.75)
    end   

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 602462.399" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(30123.11995).of(602462.399)
    end   

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 2253.173712" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(112.6586856).of(2253.173712)
    end   

    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.5" do
      @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.375).of(13387.5)
    end   

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9697.065667" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(484.8532833500001).of(9697.065667)
    end   

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 44267272.91" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(2213363.6455).of(44267272.91)
    end   

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end   

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 190819641.2" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(9540982.06).of(190819641.2)
    end   

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 280584476.1" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(14029223.805000002).of(280584476.1)
    end   

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 199982710.3" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(9999135.515).of(199982710.3)
    end   

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 6669208.391" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(333460.41955).of(6669208.391)
    end   

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 4686963.274" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(234348.16370000003).of(4686963.274)
    end   

    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 16538315.31" do
      @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(826915.7655000001).of(16538315.31)
    end   

    it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end   

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end   

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 7938226.421" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(396911.32105).of(7938226.421)
    end   

    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end   

    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 9964183.931" do
      @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(498209.19655).of(9964183.931)
    end   

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 235374124.1" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(11768706.205).of(235374124.1)
    end   

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 130767381.3" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(6538369.065).of(130767381.3)
    end   

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 215524754.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(10776237.740000002).of(215524754.8)
    end   

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 120058747.1" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(6002937.355).of(120058747.1)
    end   

    it "total cost of energy_power_engine_diesel should be within 5.0% of 1350615.924" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(51939.651600000005).of(1350615.924)
    end   

    it "total cost of energy_power_engine_network_gas should be within 5.0% of 2444820.029" do
      @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(1317052.536).of(26341050.725)
    end   

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
    end   

    it "total cost of energy_power_hv_network_electricity should be within 5.0% of 47926596.97" do
      @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(2396329.8485).of(47926596.97)
    end   

    it "total cost of energy_power_hydro_mountain should be within 5.0% of 56752467.81" do
      @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(2837623.3905).of(56752467.81)
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

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 382137001.1" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(19106850.055000003).of(382137001.1)
    end   

    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 614878773.6" do
      @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(30743938.680000003).of(614878773.6)
    end   

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15172516.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(758625.8335000001).of(15172516.67)
    end   

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 2549275.0" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(127463.8).of(2549275.0)
    end   

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 209495043.5" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(10474752.175).of(209495043.5)
    end   

    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27436675.0" do
      @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1371833.75).of(27436675.0)
    end   

    it "total cost of energy_power_transformer_lv_mv_electricity should be within 5.0% of 1999.279402" do
      @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(99.9639701).of(1999.279402)
    end   

    it "total cost of energy_power_transformer_mv_hv_electricity should be within 5.0% of 321203.8165" do
      @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(16060.190825000001).of(321203.8165)
    end   

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 8846298.769" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(442314.93845).of(8846298.769)
    end   

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 269820764.1" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(13491038.205000002).of(269820764.1)
    end   

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 217266313.5" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(10863315.675).of(217266313.5)
    end   

    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 370724043.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(18536202.150000002).of(370724043.0)
    end   

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 371680320.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(18584016.0).of(371680320.0)
    end   

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 181265194.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9063259.745000001).of(181265194.9)
    end   

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 83892075.86" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(4194603.7930000005).of(83892075.86)
    end   

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 316715428.2" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15835771.41).of(316715428.2)
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

    it "total cost of households_collective_chp_biogas should be within 5.0% of 1736777.32" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(32057.943785).of(1736777.325)
    end   

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 625460.1805" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(31273.009025000003).of(625460.1805)
    end   

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2579919.547" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(128995.97735).of(2579919.547)
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

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 193.448" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(9.672).of(193.448)
    end   

    it "total cost of households_space_heater_coal should be within 5.0% of 316.7324084" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(15.836620420000001).of(316.7324084)
    end   

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 445.1723555" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(22.258617775).of(445.1723555)
    end   

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 831.3748134" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(41.568740670000004).of(831.3748134)
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

    it "total cost of households_space_heater_network_gas should be within 5.0% of 487.3202958" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(24.36601479).of(487.3202958)
    end   

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 753.41145" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(37.6705725).of(753.41145)
    end   

    it "total cost of households_water_heater_coal should be within 5.0% of 231.0" do
      @scenario.total_cost_of_households_water_heater_coal.value.should be_within(11.55).of(231.0)
    end   

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 301.254967" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(15.062748350000001).of(301.254967)
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

    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end   

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end   

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end   

    it "total cost of households_water_heater_network_gas should be within 5.0% of 170.3488612" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(8.51744306).of(170.3488612)
    end   

    it "total cost of households_water_heater_resistive_electricity should be within 5.0% of 14.7" do
      @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.735).of(14.7)
    end   

    it "total cost of households_water_heater_solar_thermal should be within 5.0% of 95.55" do
      @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(4.7775).of(95.55)
    end   

    it "total cost of households_water_heater_wood_pellets should be within 5.0% of 476.6108108" do
      @scenario.total_cost_of_households_water_heater_wood_pellets.value.should be_within(23.83054054).of(476.6108108)
    end   

    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 6669208.391" do
      @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(333460.41955).of(6669208.391)
    end   

    it "total cost of industry_burner_coal should be within 5.0% of 4462378.058" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(223118.90290000002).of(4462378.058)
    end   

    it "total cost of industry_burner_crude_oil should be within 5.0% of 14452514.49" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(722625.7245).of(14452514.49)
    end   

    it "total cost of industry_burner_network_gas should be within 5.0% of 6669208.391" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(333460.41955).of(6669208.391)
    end   

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10077030.02" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(503851.501).of(10077030.02)
    end   

    it "total cost of industry_chemicals_burner_coal should be within 5.0% of 4462378.058" do
      @scenario.total_cost_of_industry_chemicals_burner_coal.value.should be_within(223118.90290000002).of(4462378.058)
    end   

    it "total cost of industry_chemicals_burner_crude_oil should be within 5.0% of 14452514.49" do
      @scenario.total_cost_of_industry_chemicals_burner_crude_oil.value.should be_within(722625.7245).of(14452514.49)
    end   

    it "total cost of industry_chemicals_burner_network_gas should be within 5.0% of 6669208.391" do
      @scenario.total_cost_of_industry_chemicals_burner_network_gas.value.should be_within(333460.41955).of(6669208.391)
    end   

    it "total cost of industry_chemicals_burner_wood_pellets should be within 5.0% of 10077030.02" do
      @scenario.total_cost_of_industry_chemicals_burner_wood_pellets.value.should be_within(503851.501).of(10077030.02)
    end   

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 52363330.15" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2618166.5075000003).of(52363330.15)
    end   

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 516377.8567" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(25818.892835000002).of(516377.8567)
    end   

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 24927067.5" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1246353.375).of(24927067.5)
    end   

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 5764528.2068" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(324090.5381).of(5764528.2068)
    end   

    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 4576654.646" do
      @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(228832.7323).of(4576654.646)
    end   

    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 4171061.79" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(190921.98645).of(4171061.79)
    end   

    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 6669208.391" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(333460.41955).of(6669208.391)
    end   

    it "total cost of other_burner_coal should be within 5.0% of 4462378.058" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(223118.90290000002).of(4462378.058)
    end   

    it "total cost of other_burner_crude_oil should be within 5.0% of 755051.0485" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(37752.552425).of(755051.0485)
    end   

    it "total cost of other_burner_network_gas should be within 5.0% of 331312.3972" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(16565.619860000003).of(331312.3972)
    end   

    it "total cost of other_burner_wood_pellets should be within 5.0% of 523510.371" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26175.51855).of(523510.371)
    end
  end
end
