#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 675607.9264" do
      @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(33780.39632).of(675607.9264)
    end

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 374893.9019" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(18744.695095).of(374893.9019)
    end

    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 701158.8757" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(35057.943785).of(701158.8757)
    end

    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 658492.5314" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(32924.62657).of(658492.5314)
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

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 692102.8127" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(34605.140635).of(692102.8127)
    end

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 692102.8127" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(34605.140635).of(692102.8127)
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

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 863339.2273" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(43166.961365).of(863339.2273)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 2545.292412" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(127.2646206).of(2545.292412)
    end

    it "total cost of buildings_space_heater_coal should be within 5.0% of 4652.017312" do
      @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(232.60086560000002).of(4652.017312)
    end

    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
      @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
    end

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 9784.837895" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(489.24189475000003).of(9784.837895)
    end

    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.75" do
      @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.787500000000001).of(195.75)
    end

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 620123.9693" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(31006.198465).of(620123.9693)
    end

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 2541.885584" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(127.09427920000002).of(2541.885584)
    end

    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.5" do
      @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.375).of(13387.5)
    end

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9764.248915" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(488.21244575000003).of(9764.248915)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 48814717.6" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(2440735.8800000004).of(48814717.6)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 48814717.6" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(2440735.8800000004).of(48814717.6)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 192685065.8" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(9634253.290000001).of(192685065.8)
    end

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 283065767.9" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(14153288.395).of(283065767.9)
    end

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 283065767.9" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(14153288.395).of(283065767.9)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 198819800.9" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(9940990.045).of(198819800.9)
    end

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 7529854.404" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(376492.72020000004).of(7529854.404)
    end

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 4759464.382" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(237973.21910000002).of(4759464.382)
    end

    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 14779088.31" do
      @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(738954.4155000001).of(14779088.31)
    end

    it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 8984958.059" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(449247.90295).of(8984958.059)
    end

    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end

    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 10070912.4" do
      @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(503545.62000000005).of(10070912.4)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 244826458.6" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(12241322.93).of(244826458.6)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 220017365.4" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(11000868.270000001).of(220017365.4)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 222997403.3" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(11149870.165000001).of(222997403.3)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 221810657.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(11090532.89).of(221810657.8)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 933271.1851" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(46663.559255).of(933271.1851)
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

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 363549963.8" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(18177498.19).of(363549963.8)
    end

    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 618640322.9" do
      @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(30932016.145).of(618640322.9)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15154166.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(757708.3335000001).of(15154166.67)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 4236515.76" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(211825.788).of(4236515.76)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 205901704.1" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(10295085.205).of(205901704.1)
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

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 12943795.65" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(647189.7825000001).of(12943795.65)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 246576332.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(12328816.645000001).of(246576332.9)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 217613545.5" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(10880677.275).of(217613545.5)
    end

    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 368558110.6" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(18427905.53).of(368558110.6)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 335651350.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(16782567.544999998).of(335651350.9)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 180213758.6" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9010687.93).of(180213758.6)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 68914110.27" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3445705.5135).of(68914110.27)
    end

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 316554410.8" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15827720.540000001).of(316554410.8)
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

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 692102.8127" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(34605.140635).of(692102.8127)
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

    it "total cost of households_space_heater_coal should be within 5.0% of 316.3165611" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(15.815828055).of(316.3165611)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 465.8962468" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(23.29481234).of(465.8962468)
    end

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 741.6636096" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(37.08318048).of(741.6636096)
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

    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_space_heater_network_gas should be within 5.0% of 514.9607858" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(25.748039290000005).of(514.9607858)
    end

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 742.3468805" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(37.117344025).of(742.3468805)
    end

    it "total cost of households_water_heater_coal should be within 5.0% of 231.0" do
      @scenario.total_cost_of_households_water_heater_coal.value.should be_within(11.55).of(231.0)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 308.0721471" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(15.403607355).of(308.0721471)
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

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_water_heater_network_gas should be within 5.0% of 179.5062672" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(8.97531336).of(179.5062672)
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

    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 7529854.404" do
      @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(376492.72020000004).of(7529854.404)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 4527629.055" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(226381.45275).of(4527629.055)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 12926438.05" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(646321.9025000001).of(12926438.05)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 7529854.404" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(376492.72020000004).of(7529854.404)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10185359.42" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(509267.971).of(10185359.42)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 56522115.04" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2826105.7520000003).of(56522115.04)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 558618.23" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(27930.911500000002).of(558618.23)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 26995515.77" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1349775.7885).of(26995515.77)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 6578368.554" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(328918.4277).of(6578368.554)
    end

    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 6230631.323" do
      @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(311531.56615).of(6230631.323)
    end

    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 4287865.166" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(214393.25830000002).of(4287865.166)
    end

    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 7529854.404" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(376492.72020000004).of(7529854.404)
    end

    it "total cost of other_burner_coal should be within 5.0% of 4527629.055" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(226381.45275).of(4527629.055)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 675607.9264" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(33780.39632).of(675607.9264)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 374893.9019" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(18744.695095).of(374893.9019)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end
  end
end
