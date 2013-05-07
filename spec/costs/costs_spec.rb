#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 669753.6637" do
      @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(33487.683185).of(669753.6637)
    end

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 369782.985" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(18489.14925).of(369782.985)
    end

    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 518989.6606" do
      @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(25949.483030000003).of(518989.6606)
    end

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 827342.31" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(41376).of(827342.31)
    end

    it "total costa of agriculture_chp_engine_network_gas should be within 5.0% of 712226.3581" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(35611.317904999996).of(712226.3581)
    end

    it "total costa of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2921958.22" do
      @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(146098).of(2921958.22)
    end

    it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
      @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
    end

    it "total cost of buildings_collective_chp_natural_gas should be within 5.0% of 741232.3143" do
      @scenario.total_cost_of_buildings_collective_chp_natural_gas.value.should be_within(37061.615715).of(741232.3143)
    end

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2296783.898" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(114839.1949).of(2296783.898)
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

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 858888.4054" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(42944.42027).of(858888.4054)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.0" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.65).of(587333.0)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 2545.292412" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(127.2646206).of(2545.292412)
    end

    it "total cost of buildings_space_heater_coal should be within 5.0% of 4942.535558" do
      @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(247.12677789999998).of(4942.535558)
    end

    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
      @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
    end

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 9715.061477" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(485.75307384999996).of(9715.061477)
    end

    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.0" do
      @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.700000000000003).of(594.0)
    end

    it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.72" do
      @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.786000000000001).of(195.72)
    end

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 618052.7509" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(30902.637545).of(618052.7509)
    end

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 2507.694256" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(125.38471280000002).of(2507.694256)
    end

    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13386.72" do
      @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.336).of(13386.72)
    end

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9643.738808" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(482.1869404).of(9643.738808)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 50579558.7" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(2528977.9).of(50579558.7)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 15825000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(791250).of(15825000.0)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 255495669" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(12774783).of(255495669)
    end

    it "total cost of energy_chp_ultra_supercritical_crude_oil should be within 5.0% of 380308908.7" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_crude_oil.value.should be_within(19015445.435).of(380308908.7)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 135687530.4" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(6784376.5200000005).of(135687530.4)
    end

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 7395659.701" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(369782.98505).of(7395659.701)
    end

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 5202804.488" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(260140.2244).of(5202804.488)
    end

    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 14596149.85" do
      @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(729807.4925).of(14596149.85)
    end

    it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 8821748.285" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(441087.41425000003).of(8821748.285)
    end

    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end

    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 9879467.962" do
      @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(493973.3981).of(9879467.962)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 282404665.4" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(14120233.27).of(282404665.4)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 267656871.2" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(13382843.56).of(267656871.2)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 244612695.4" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(12230634.770000001).of(244612695.4)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 265687203.4" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(13284360.170000002).of(265687203.4)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 327951301.0" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(16397565.05).of(327951301.0)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495).of(15969915)
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

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 366156088.5" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(18307804.425).of(366156088.5)
    end

    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 647123302.8" do
      @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(32356165.14).of(647123302.8)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15154166.33" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(757708.3165000001).of(15154166.33)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 4236515.36" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(211825.76800000004).of(4236515.36)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 178126907.2" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(8906345.36).of(178126907.2)
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

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 17705160.81" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(885258.0405).of(17705160.81)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 262124830.6" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(13106241.530000001).of(262124830.6)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 262363802.8" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(13118190.14).of(262363802.8)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 327951301.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(16397565.05).of(327951301.0)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 181196389.5" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9059819.475).of(181196389.5)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 106339848.5" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(5316992.425000001).of(106339848.5)
    end

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 315233432.2" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15761671.61).of(315233432.2)
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

    it "total cost of households_collective_chp_biogas should be within 5.0% of 638724.9" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(31936).of(638724.9)
    end

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 741232.3143" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(37061.615715).of(741232.3143)
    end

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2296783.898" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(114839.1949).of(2296783.898)
    end

    it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of households_cooling_airconditioning_electricity should be within 5.0% of 181.0" do
      @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(9.05).of(181.0)
    end

    it "total cost of households_cooling_heatpump_air_water_electricity should be within 5.0% of 923.0" do
      @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(46.150000000000006).of(923.0)
    end

    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 5.0% of 1226.0" do
      @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(61.300000000000004).of(1226.0)
    end

    it "total cost of households_heat_network_connection_steam_hot_water should be within 5.0% of 633.0" do
      @scenario.total_cost_of_households_heat_network_connection_steam_hot_water.value.should be_within(31.650000000000002).of(633.0)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 222.9245208" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(11.146226040000002).of(222.9245208)
    end

    it "total cost of households_space_heater_coal should be within 5.0% of 358.6544642" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(17.932723210000002).of(358.6544642)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 513.729032" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(25.686451599999998).of(513.729032)
    end

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 845.1910473" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(42.259552365000005).of(845.1910473)
    end

    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.0" do
      @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(29.700000000000003).of(594.0)
    end

    it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
      @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
    end

    it "total cost of households_space_heater_heatpump_add_on_electricity should be within 5.0% of 281.0" do
      @scenario.total_cost_of_households_space_heater_heatpump_add_on_electricity.value.should be_within(14.05).of(281.0)
    end

    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 5.0% of 923.0" do
      @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(46.150000000000006).of(923.0)
    end

    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.0" do
      @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.300000000000004).of(1226.0)
    end

    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.0" do
      @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.650000000000006).of(933.0)
    end

    it "total cost of households_space_heater_network_gas should be within 5.0% of 578.0910964" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(28.90455482).of(578.0910964)
    end

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 802.5007705" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(40.12503852500001).of(802.5007705)
    end

    it "total cost of households_water_heater_coal should be within 5.0% of 231.0" do
      @scenario.total_cost_of_households_water_heater_coal.value.should be_within(11.55).of(231.0)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 322.8718818" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(16.14359409).of(322.8718818)
    end

    it "total cost of households_water_heater_crude_oil should be within 5.0% of 245.0" do
      @scenario.total_cost_of_households_water_heater_crude_oil.value.should be_within(12.25).of(245.0)
    end

    it "total cost of households_water_heater_district_heating_steam_hot_water should be within 5.0% of 594.0" do
      @scenario.total_cost_of_households_water_heater_district_heating_steam_hot_water.value.should be_within(29.700000000000003).of(594.0)
    end

    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.0" do
      @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.65).of(2453.0)
    end

    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.0" do
      @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.150000000000006).of(923.0)
    end

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.0" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.300000000000004).of(1226.0)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.0" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.650000000000006).of(933.0)
    end

    it "total cost of households_water_heater_network_gas should be within 5.0% of 199.1198413" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(9.955992065).of(199.1198413)
    end

    it "total cost of households_water_heater_resistive_electricity should be within 5.0% of 14.68" do
      @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.734).of(14.68)
    end

    it "total cost of households_water_heater_solar_thermal should be within 5.0% of 94.78" do
      @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(4.739).of(94.78)
    end

    it "total cost of households_water_heater_wood_pellets should be within 5.0% of 476.6108108" do
      @scenario.total_cost_of_households_water_heater_wood_pellets.value.should be_within(23.83054054).of(476.6108108)
    end

    it "total cost of industry_aluminium_burner should be within 5.0% of 7395659.701" do
      @scenario.total_cost_of_industry_aluminium_burner.value.should be_within(369782.98505).of(7395659.701)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 4926635.15" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(246331.75750000004).of(4926635.15)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 12767744.45" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(638387.2225).of(12767744.45)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 7395659.701" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(369782.98505).of(7395659.701)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 9991043.315" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(499552.16575).of(9991043.315)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 48827533.1" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2441376).of(48827533.1)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 511460.12" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(25573.006).of(511460.12)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 31862130.34" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1593106.517).of(31862130.34)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 7134894.8" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(356744).of(7134894.8)
    end

    it "total cost of industry_other_metals_burner should be within 5.0% of 7395659.701" do
      @scenario.total_cost_of_industry_other_metals_burner.value.should be_within(369782.98505).of(7395659.701)
    end

    it "total cost of industry_steel_blastfurnace_burner should be within 5.0% of 4478766.876" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner.value.should be_within(223938.34380000003).of(4478766.876)
    end

    it "total cost of industry_steel_electricfurnace_burner should be within 5.0% of 7395659.701" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner.value.should be_within(369782.98505).of(7395659.701)
    end

    it "total cost of other_burner_coal should be within 5.0% of 4926635.15" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(246331.75750000004).of(4926635.15)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 669753.6637" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(33487.683185).of(669753.6637)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 369782.985" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(18489.14925).of(369782.985)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 518989.6606" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(25949.483030000003).of(518989.6606)
    end

    it "total cost of other_chp_engine_biogas should be within 5.0% of 638724.9" do
      @scenario.total_cost_of_other_chp_engine_biogas.value.should be_within(39136).of(638724.9)
    end

    it "total cost of other_chp_engine_network_gas should be within 5.0% of 243857.8" do
      @scenario.total_cost_of_other_chp_engine_network_gas.value.should be_within(12193).of(243857.8)
    end
  end
end
