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

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 331498.8948" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(16574.944740000003).of(331498.8948)
    end

    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 701158.8757" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(35057.943785).of(701158.8757)
    end

    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 598770.8268" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(29938.541340000003).of(598770.8268)
    end

    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2620827.119" do
      @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(131041.35595).of(2620827.119)
    end

    it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
      @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
    end

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 641158.8757" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(32057.943785).of(641158.8757)
    end

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 625745.3632" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(31287.268160000003).of(625745.3632)
    end

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2597727.119" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(129886.35595).of(2597727.119)
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

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 825548.855" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(41277.44275).of(825548.855)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 2545.292412" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(127.2646206).of(2545.292412)
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

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 602537.9778" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(30126.89889).of(602537.9778)
    end

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 2254.409192" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(112.72045960000001).of(2254.409192)
    end

    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.5" do
      @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.375).of(13387.5)
    end

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9764.248915" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(488.21244575000003).of(9764.248915)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 44287177.9" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(2214358.895).of(44287177.9)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 190819641.2" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(9540982.06).of(190819641.2)
    end

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 282133088.4" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(14106654.42).of(282133088.4)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 199982710.3" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(9999135.515).of(199982710.3)
    end

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 6672975.595" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(333648.77975).of(6672975.595)
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

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 7942808.156" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(397140.40780000004).of(7942808.156)
    end

    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end

    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 10070912.4" do
      @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(503545.62000000005).of(10070912.4)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 242420992.9" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(12121049.645000001).of(242420992.9)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 203107750.4" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(10155387.520000001).of(203107750.4)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 221061058.7" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(11053052.935).of(221061058.7)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 202090707.1" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(10104535.355).of(202090707.1)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 1038793.032" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(51939.651600000005).of(1038793.032)
    end

    it "total cost of energy_power_engine_network_gas should be within 5.0% of 2444832.93" do
      @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(122241.64650000002).of(2444832.93)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
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

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 360973203.8" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(18048660.19).of(360973203.8)
    end

    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 615222509.9" do
      @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(30761125.495).of(615222509.9)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15154166.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(757708.3335000001).of(15154166.67)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 4236515.76" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(211825.788).of(4236515.76)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 202299822.5" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(10114991.125).of(202299822.5)
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

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 12167011.88" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(608350.594).of(12167011.88)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 243368194.7" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(12168409.735).of(243368194.7)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 214421596.7" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(10721079.835).of(214421596.7)
    end

    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 366962192.3" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(18348109.615000002).of(366962192.3)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 371680320.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(18584016.0).of(371680320.0)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 181265194.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9063259.745000001).of(181265194.9)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 63984122.6" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3199206.1300000004).of(63984122.6)
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

    it "total cost of households_collective_chp_biogas should be within 5.0% of 641158.8757" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(32057.943785).of(641158.8757)
    end

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 625745.3632" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(31287.268160000003).of(625745.3632)
    end

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2597727.119" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(129886.35595).of(2597727.119)
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

    it "total cost of households_space_heater_coal should be within 5.0% of 312.2801704" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(15.614008519999999).of(312.2801704)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 434.0260178" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(21.70130089).of(434.0260178)
    end

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 800.9233155" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(40.046165775).of(800.9233155)
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

    it "total cost of households_space_heater_network_gas should be within 5.0% of 472.4538679" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(23.622693395).of(472.4538679)
    end

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 740.7428252" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(37.03714126).of(740.7428252)
    end

    it "total cost of households_water_heater_coal should be within 5.0% of 231.0" do
      @scenario.total_cost_of_households_water_heater_coal.value.should be_within(11.55).of(231.0)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 297.3451276" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(14.86725638).of(297.3451276)
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

    it "total cost of households_water_heater_network_gas should be within 5.0% of 165.0968381" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(8.254841905000001).of(165.0968381)
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

    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 6672975.595" do
      @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(333648.77975).of(6672975.595)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 4462378.058" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(223118.90290000002).of(4462378.058)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 14452514.49" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(722625.7245).of(14452514.49)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 6672975.595" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(333648.77975).of(6672975.595)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10185359.42" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(509267.971).of(10185359.42)
    end

    it "total cost of industry_chemicals_burner_coal should be within 5.0% of 4462378.058" do
      @scenario.total_cost_of_industry_chemicals_burner_coal.value.should be_within(223118.90290000002).of(4462378.058)
    end

    it "total cost of industry_chemicals_burner_crude_oil should be within 5.0% of 14452514.49" do
      @scenario.total_cost_of_industry_chemicals_burner_crude_oil.value.should be_within(722625.7245).of(14452514.49)
    end

    it "total cost of industry_chemicals_burner_network_gas should be within 5.0% of 6672975.595" do
      @scenario.total_cost_of_industry_chemicals_burner_network_gas.value.should be_within(333648.77975).of(6672975.595)
    end

    it "total cost of industry_chemicals_burner_wood_pellets should be within 5.0% of 10185359.42" do
      @scenario.total_cost_of_industry_chemicals_burner_wood_pellets.value.should be_within(509267.971).of(10185359.42)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 53907690.44" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2695384.522).of(53907690.44)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 531783.6351" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(26589.181754999998).of(531783.6351)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 25695183.54" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1284759.1770000001).of(25695183.54)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 6481810.762" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(324090.5381).of(6481810.762)
    end

    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 5777212.826" do
      @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(288860.6413).of(5777212.826)
    end

    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 3962240.175" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(198112.00875).of(3962240.175)
    end

    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 6672975.595" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(333648.77975).of(6672975.595)
    end

    it "total cost of other_burner_coal should be within 5.0% of 4462378.058" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(223118.90290000002).of(4462378.058)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 755051.0485" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(37752.552425).of(755051.0485)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 331498.8948" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(16574.944740000003).of(331498.8948)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end
  end
end
