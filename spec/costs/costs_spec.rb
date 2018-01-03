#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
        settings_enable_merit_order: 1
      })
  end

  #Checking for change
  context "Testing all converters with total cost" do
    it "total cost of households_water_heater_resistive_electricity should be within 5.0% of 14.7" do
        @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.735).of(14.7)
    end
    it "total cost of households_flexibility_p2h_electricity should be within 5.0% of 21.58866667" do
        @scenario.total_cost_of_households_flexibility_p2h_electricity.value.should be_within(1.0794333335).of(21.58866667)
    end
    it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
        @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
    end
    it "total cost of households_water_heater_solar_thermal should be within 5.0% of 95.55" do
        @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(4.7775).of(95.55)
    end
    it "total cost of households_water_heater_network_gas should be within 5.0% of 106.7640439" do
        @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(5.338202195000001).of(106.7640439)
    end
    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 152.4992" do
        @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(7.624960000000001).of(152.4992)
    end
    it "total cost of households_cooling_airconditioning_electricity should be within 5.0% of 181.0" do
        @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(9.05).of(181.0)
    end
    it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.75" do
        @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.787500000000001).of(195.75)
    end
    it "total cost of buildings_cooling_airconditioning_electricity should be within 5.0% of 199.0" do
        @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(9.950000000000001).of(199.0)
    end
    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 253.9196031" do
        @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(12.695980155).of(253.9196031)
    end
    it "total cost of households_space_heater_coal should be within 5.0% of 288.1201466" do
        @scenario.total_cost_of_households_space_heater_coal.value.should be_within(14.406007330000001).of(288.1201466)
    end
    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 355.8966002" do
        @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(17.794830010000002).of(355.8966002)
    end
    it "total cost of households_space_heater_network_gas should be within 5.0% of 368.2487572" do
        @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(18.41243786).of(368.2487572)
    end
    it "total cost of households_space_heater_crude_oil should be within 5.0% of 458.6597254" do
        @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(22.93298627).of(458.6597254)
    end
    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
        @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end
    it "total cost of households_water_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
        @scenario.total_cost_of_households_water_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end
    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
        @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end
    it "total cost of households_heat_network_connection_steam_hot_water should be within 5.0% of 633.3333333" do
        @scenario.total_cost_of_households_heat_network_connection_steam_hot_water.value.should be_within(31.666666665000005).of(633.3333333)
    end
    it "total cost of households_space_heater_hybrid_heatpump_air_water_electricity should be within 5.0% of 659.1417741" do
        @scenario.total_cost_of_households_space_heater_hybrid_heatpump_air_water_electricity.value.should be_within(32.957088705000004).of(659.1417741)
    end
    it "total cost of households_water_heater_hybrid_heatpump_air_water_electricity should be within 5.0% of 670.9529364" do
        @scenario.total_cost_of_households_water_heater_hybrid_heatpump_air_water_electricity.value.should be_within(33.547646820000004).of(670.9529364)
    end
    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 762.3751068" do
        @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(38.11875534).of(762.3751068)
    end
    it "total cost of households_flexibility_p2p_electricity should be within 5.0% of 857.712" do
        @scenario.total_cost_of_households_flexibility_p2p_electricity.value.should be_within(42.885600000000004).of(857.712)
    end
    it "total cost of households_cooling_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
        @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end
    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
        @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end
    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
        @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end
    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 5.0% of 1031.354667" do
        @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(51.567733350000005).of(1031.354667)
    end
    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 1053.330625" do
        @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(52.666531250000006).of(1053.330625)
    end
    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
        @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end
    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1334.688" do
        @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(66.73440000000001).of(1334.688)
    end
    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1356.629292" do
        @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(67.8314646).of(1356.629292)
    end
    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 1426.720341" do
        @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(71.33601705).of(1426.720341)
    end
    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 1735.488" do
        @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(86.77440000000001).of(1735.488)
    end
    it "total cost of energy_power_lv_network_electricity should be within 5.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(99.9639701).of(1999.279402)
    end
    it "total cost of energy_power_transformer_lv_mv_electricity should be within 5.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(99.9639701).of(1999.279402)
    end
    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
        @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
    end
    it "total cost of buildings_space_heater_coal should be within 5.0% of 4163.775773" do
        @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(208.18878865000002).of(4163.775773)
    end
    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 5267.561208" do
        @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(263.37806040000004).of(5267.561208)
    end
    it "total cost of energy_power_mv_distribution_network_electricity should be within 5.0% of 7789.192549" do
        @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(389.45962745).of(7789.192549)
    end
    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9684.202349" do
        @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(484.21011745).of(9684.202349)
    end
    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.5" do
        @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.375).of(13387.5)
    end
    it "total cost of energy_power_engine_diesel should be within 5.0% of 34000.0" do
        @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(1700.0).of(34000.0)
    end
    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end
    it "total cost of energy_flexibility_p2g_electricity should be within 5.0% of 49491.7807" do
        @scenario.total_cost_of_energy_flexibility_p2g_electricity.value.should be_within(2474.5890350000004).of(49491.7807)
    end
    it "total cost of energy_power_mv_transport_network_electricity should be within 5.0% of 86884.46792" do
        @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(4344.223396).of(86884.46792)
    end
    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end
    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 126253.6435" do
        @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(6312.682175000001).of(126253.6435)
    end
    it "total cost of industry_chemicals_other_heatpump_water_water_electricity should be within 5.0% of 173333.3333" do
        @scenario.total_cost_of_industry_chemicals_other_heatpump_water_water_electricity.value.should be_within(8666.666665).of(173333.3333)
    end
    it "total cost of other_burner_network_gas should be within 5.0% of 206557.9795" do
        @scenario.total_cost_of_other_burner_network_gas.value.should be_within(10327.898975).of(206557.9795)
    end
    it "total cost of agriculture_burner_network_gas should be within 5.0% of 206557.9795" do
        @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(10327.898975).of(206557.9795)
    end
    it "total cost of industry_flexibility_p2g_electricity should be within 5.0% of 246255.0" do
        @scenario.total_cost_of_industry_flexibility_p2g_electricity.value.should be_within(12312.75).of(246255.0)
    end
    it "total cost of bunkers_flexibility_p2g_electricity should be within 5.0% of 246255.0" do
        @scenario.total_cost_of_bunkers_flexibility_p2g_electricity.value.should be_within(12312.75).of(246255.0)
    end
    it "total cost of buildings_collective_geothermal should be within 5.0% of 287417.4843" do
        @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end
    it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
        @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end
    it "total cost of other_burner_crude_oil should be within 5.0% of 292951.0138" do
        @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(14647.550690000002).of(292951.0138)
    end
    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 292951.0138" do
        @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(14647.550690000002).of(292951.0138)
    end
    it "total cost of energy_power_transformer_mv_hv_electricity should be within 5.0% of 321203.8165" do
        @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(16060.190825000001).of(321203.8165)
    end
    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
        @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
    end
    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 377953.6289" do
        @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(18897.681445000002).of(377953.6289)
    end
    it "total cost of industry_chemicals_other_flexibility_p2h_electricity should be within 5.0% of 400000.0" do
        @scenario.total_cost_of_industry_chemicals_other_flexibility_p2h_electricity.value.should be_within(20000.0).of(400000.0)
    end
    it "total cost of industry_chemicals_refineries_flexibility_p2h_electricity should be within 5.0% of 400000.0" do
        @scenario.total_cost_of_industry_chemicals_refineries_flexibility_p2h_electricity.value.should be_within(20000.0).of(400000.0)
    end
    it "total cost of industry_other_food_flexibility_p2h_electricity should be within 5.0% of 400000.0" do
        @scenario.total_cost_of_industry_other_food_flexibility_p2h_electricity.value.should be_within(20000.0).of(400000.0)
    end
    it "total cost of industry_other_paper_flexibility_p2h_electricity should be within 5.0% of 400000.0" do
        @scenario.total_cost_of_industry_other_paper_flexibility_p2h_electricity.value.should be_within(20000.0).of(400000.0)
    end
    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
        @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
    end
    it "total cost of industry_chemicals_other_heater_electricity should be within 5.0% of 454750.0" do
        @scenario.total_cost_of_industry_chemicals_other_heater_electricity.value.should be_within(22737.5).of(454750.0)
    end
    it "total cost of industry_other_paper_heater_electricity should be within 5.0% of 454750.0" do
        @scenario.total_cost_of_industry_other_paper_heater_electricity.value.should be_within(22737.5).of(454750.0)
    end
    it "total cost of industry_other_food_heater_electricity should be within 5.0% of 454750.0" do
        @scenario.total_cost_of_industry_other_food_heater_electricity.value.should be_within(22737.5).of(454750.0)
    end
    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 481528.5407" do
        @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(24076.427035).of(481528.5407)
    end
    it "total cost of households_collective_chp_network_gas should be within 5.0% of 481528.5407" do
        @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(24076.427035).of(481528.5407)
    end
    it "total cost of other_burner_wood_pellets should be within 5.0% of 522419.9011" do
        @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26120.995055000003).of(522419.9011)
    end
    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 522419.9011" do
        @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26120.995055000003).of(522419.9011)
    end
    it "total cost of energy_power_wind_turbine_inland should be within 5.0% of 531768.45" do
        @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(26588.4225).of(531768.45)
    end
    it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
        @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
    end
    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 551905.1971" do
        @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(27595.259855).of(551905.1971)
    end
    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
        @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end
    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 716744.5472" do
        @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(35837.227360000004).of(716744.5472)
    end
    it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
        @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end
    it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
        @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end
    it "total cost of industry_chemicals_other_steam_recompression_electricity should be within 5.0% of 893566.6667" do
        @scenario.total_cost_of_industry_chemicals_other_steam_recompression_electricity.value.should be_within(44678.333335).of(893566.6667)
    end
    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 5.0% of 1314033.788" do
        @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(65701.6894).of(1314033.788)
    end
    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 1605000.0" do
        @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(80250.0).of(1605000.0)
    end
    it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
        @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
    end
    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 1691150.702" do
        @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(84557.53510000001).of(1691150.702)
    end
    it "total cost of households_collective_chp_biogas should be within 5.0% of 1691150.702" do
        @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(84557.53510000001).of(1691150.702)
    end
    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 1691150.702" do
        @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(84557.53510000001).of(1691150.702)
    end
    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2622810.0" do
        @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(131140.5).of(2622810.0)
    end
    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2730510.0" do
        @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(136525.5).of(2730510.0)
    end
    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2730510.0" do
        @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(136525.5).of(2730510.0)
    end
    it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
        @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
    end
    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 3002037.138" do
        @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(150101.85689999998).of(3002037.138)
    end
    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 3430413.622" do
        @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(171520.68110000002).of(3430413.622)
    end
    it "total cost of industry_chemicals_other_burner_coal should be within 5.0% of 3802855.885" do
        @scenario.total_cost_of_industry_chemicals_other_burner_coal.value.should be_within(190142.79425).of(3802855.885)
    end
    it "total cost of industry_chemicals_refineries_burner_coal should be within 5.0% of 3802855.885" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_coal.value.should be_within(190142.79425).of(3802855.885)
    end
    it "total cost of industry_other_food_burner_coal should be within 5.0% of 3802855.885" do
        @scenario.total_cost_of_industry_other_food_burner_coal.value.should be_within(190142.79425).of(3802855.885)
    end
    it "total cost of industry_other_paper_burner_coal should be within 5.0% of 3802855.885" do
        @scenario.total_cost_of_industry_other_paper_burner_coal.value.should be_within(190142.79425).of(3802855.885)
    end
    it "total cost of industry_chemicals_fertilizers_burner_coal should be within 5.0% of 3802855.885" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_coal.value.should be_within(190142.79425).of(3802855.885)
    end
    it "total cost of other_burner_coal should be within 5.0% of 3802855.885" do
        @scenario.total_cost_of_other_burner_coal.value.should be_within(190142.79425).of(3802855.885)
    end
    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 3954160.859" do
        @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(197708.04295000003).of(3954160.859)
    end
    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 3973416.305" do
        @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(198670.81525).of(3973416.305)
    end
    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of industry_other_food_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_industry_other_food_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of industry_chemicals_refineries_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of industry_other_paper_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_industry_other_paper_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of industry_chemicals_fertilizers_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of industry_chemicals_other_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_industry_chemicals_other_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of bunkers_p2l_burner_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_bunkers_p2l_burner_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 4187622.783" do
        @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(209381.13915).of(4187622.783)
    end
    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 4920081.763" do
        @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(246004.08815000003).of(4920081.763)
    end
    it "total cost of industry_other_food_burner_crude_oil should be within 5.0% of 5690950.846" do
        @scenario.total_cost_of_industry_other_food_burner_crude_oil.value.should be_within(284547.54230000003).of(5690950.846)
    end
    it "total cost of industry_chemicals_other_burner_crude_oil should be within 5.0% of 5690950.846" do
        @scenario.total_cost_of_industry_chemicals_other_burner_crude_oil.value.should be_within(284547.54230000003).of(5690950.846)
    end
    it "total cost of industry_chemicals_refineries_burner_crude_oil should be within 5.0% of 5690950.846" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_crude_oil.value.should be_within(284547.54230000003).of(5690950.846)
    end
    it "total cost of industry_other_paper_burner_crude_oil should be within 5.0% of 5690950.846" do
        @scenario.total_cost_of_industry_other_paper_burner_crude_oil.value.should be_within(284547.54230000003).of(5690950.846)
    end
    it "total cost of industry_chemicals_fertilizers_burner_crude_oil should be within 5.0% of 5690950.846" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_crude_oil.value.should be_within(284547.54230000003).of(5690950.846)
    end
    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 6438179.447" do
        @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(321908.97235).of(6438179.447)
    end
    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 6634766.741" do
        @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(331738.33705000003).of(6634766.741)
    end
    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 9943749.042" do
        @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(497187.4521).of(9943749.042)
    end
    it "total cost of industry_other_food_burner_wood_pellets should be within 5.0% of 10056288.61" do
        @scenario.total_cost_of_industry_other_food_burner_wood_pellets.value.should be_within(502814.4305).of(10056288.61)
    end
    it "total cost of industry_chemicals_refineries_burner_wood_pellets should be within 5.0% of 10056288.61" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_wood_pellets.value.should be_within(502814.4305).of(10056288.61)
    end
    it "total cost of industry_other_paper_burner_wood_pellets should be within 5.0% of 10056288.61" do
        @scenario.total_cost_of_industry_other_paper_burner_wood_pellets.value.should be_within(502814.4305).of(10056288.61)
    end
    it "total cost of industry_chemicals_fertilizers_burner_wood_pellets should be within 5.0% of 10056288.61" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_wood_pellets.value.should be_within(502814.4305).of(10056288.61)
    end
    it "total cost of industry_chemicals_other_burner_wood_pellets should be within 5.0% of 10056288.61" do
        @scenario.total_cost_of_industry_chemicals_other_burner_wood_pellets.value.should be_within(502814.4305).of(10056288.61)
    end
    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 10344280.4" do
        @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(517214.02).of(10344280.4)
    end
    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 12516068.5" do
        @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(625803.425).of(12516068.5)
    end
    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15172516.67" do
        @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(758625.8335000001).of(15172516.67)
    end
    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
        @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
    end
    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 17041164.82" do
        @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(852058.241).of(17041164.82)
    end
    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
        @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end
    it "total cost of energy_power_engine_network_gas should be within 5.0% of 26320000.0" do
        @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(1316000.0).of(26320000.0)
    end
    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27456175.0" do
        @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1372808.75).of(27456175.0)
    end
    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 29085600.0" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(1454280.0).of(29085600.0)
    end
    it "total cost of energy_power_hv_network_electricity should be within 5.0% of 47926596.97" do
        @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(2396329.8485).of(47926596.97)
    end
    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 49359622.37" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(2467981.1185).of(49359622.37)
    end
    it "total cost of energy_power_hydro_mountain should be within 5.0% of 51155234.43" do
        @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(2557761.7215).of(51155234.43)
    end
    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 76566794.3" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(3828339.715).of(76566794.3)
    end
    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 112037800.0" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(5601890.0).of(112037800.0)
    end
    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 117461956.6" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(5873097.83).of(117461956.6)
    end
    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 129225833.3" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(6461291.665).of(129225833.3)
    end
    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 135592935.3" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(6779646.765000001).of(135592935.3)
    end
    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 137557916.7" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(6877895.835).of(137557916.7)
    end
    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 152735077.3" do
        @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(7636753.865000001).of(152735077.3)
    end
    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 157393563.7" do
        @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(7869678.185).of(157393563.7)
    end
    it "total cost of energy_power_supercritical_coal should be within 5.0% of 178439119.5" do
        @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(8921955.975).of(178439119.5)
    end
    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 178999174.0" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(8949958.700000001).of(178999174.0)
    end
    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 184005277.8" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(9200263.89).of(184005277.8)
    end
    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 206419387.6" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(10320969.38).of(206419387.6)
    end
    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 240498185.1" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(12024909.255).of(240498185.1)
    end
    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 389718771.8" do
        @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(19485938.59).of(389718771.8)
    end
    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 552526594.8" do
        @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(27626329.74).of(552526594.8)
    end
  end
end
