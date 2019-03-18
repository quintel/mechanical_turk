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
    #The three transport queries do not exist. Also the costs of these technologies it presently 0
    it "total cost of agriculture_burner_crude_oil should be within 1.0% of 392026.1973" do
        @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(3920.261973).of(392026.1973)
    end
    it "total cost of agriculture_burner_hydrogen should be within 1.0% of 771983.3224" do
        @scenario.total_cost_of_agriculture_burner_hydrogen.value.should be_within(7719.833224).of(771983.3224)
    end
    it "total cost of agriculture_burner_network_gas should be within 1.0% of 264152.4336" do
        @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(2641.524336).of(264152.4336)
    end
    it "total cost of agriculture_burner_wood_pellets should be within 1.0% of 510287.1814" do
        @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(5102.871814).of(510287.1814)
    end
    it "total cost of agriculture_chp_engine_biogas should be within 1.0% of 1691150.702" do
        @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(16911.50702).of(1691150.702)
    end
    it "total cost of agriculture_chp_engine_network_gas should be within 1.0% of 448410.0494" do
        @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(4484.100494).of(448410.0494)
    end
    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 1.0% of 2584874.904" do
        @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(25848.749040000002).of(2584874.904)
    end
    it "total cost of agriculture_geothermal should be within 1.0% of 793333.3333" do
        @scenario.total_cost_of_agriculture_geothermal.value.should be_within(7933.3333330000005).of(793333.3333)
    end
    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 1.0% of 404644.3224" do
        @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(4046.443224).of(404644.3224)
    end
    it "total cost of buildings_cooling_airconditioning_electricity should be within 1.0% of 199.0" do
        @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(1.99).of(199.0)
    end
    it "total cost of buildings_chp_engine_biogas should be within 1.0% of 1691150.702" do
        @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(16911.50702).of(1691150.702)
    end
    it "total cost of buildings_collective_burner_hydrogen should be within 1.0% of 1139220.897" do
        @scenario.total_cost_of_buildings_collective_burner_hydrogen.value.should be_within(11392.208970000002).of(1139220.897)
    end
    it "total cost of buildings_collective_burner_network_gas should be within 1.0% of 409626.5337" do
        @scenario.total_cost_of_buildings_collective_burner_network_gas.value.should be_within(4096.265337000001).of(409626.5337)
    end
    it "total cost of buildings_collective_chp_network_gas should be within 1.0% of 580607.882" do
        @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(5806.07882).of(580607.882)
    end
    it "total cost of buildings_collective_chp_wood_pellets should be within 1.0% of 2692574.904" do
        @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(26925.749040000002).of(2692574.904)
    end
    it "total cost of buildings_collective_geothermal should be within 1.0% of 287417.4843" do
        @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(2874.1748430000002).of(287417.4843)
    end
    it "total cost of households_space_heater_hybrid_heatpump_air_water_electricity should be within 1.0% of 666.2779617" do
        @scenario.total_cost_of_households_space_heater_hybrid_heatpump_air_water_electricity.value.should be_within(6.662779617).of(666.2779617)
    end
    it "total cost of households_space_heater_hybrid_hydrogen_heatpump_air_water_electricity should be within 1.0% of 763.3333333" do
        @scenario.total_cost_of_households_space_heater_hybrid_hydrogen_heatpump_air_water_electricity.value.should be_within(7.633333333).of(763.3333333)
    end
    it "total cost of buildings_collective_heatpump_water_water_electricity should be within 1.0% of 63333.33333" do
        @scenario.total_cost_of_buildings_collective_heatpump_water_water_electricity.value.should be_within(633.3333333).of(63333.33333)
    end
    it "total cost of buildings_cooling_airconditioning_electricity should be within 1.0% of 199.0" do
        @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(1.99).of(199.0)
    end
    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 1.0% of 1314033.788" do
        @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(13140.33788).of(1314033.788)
    end
    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 1.0% of 766900.4525" do
        @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(7669.004525).of(766900.4525)
    end
    it "total cost of buildings_solar_pv_solar_radiation should be within 1.0% of 25.92098448" do
        @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(0.25920984480000003).of(25.92098448)
    end
    it "total cost of buildings_space_heater_coal should be within 1.0% of 5046.84392" do
        @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(50.468439200000006).of(5046.84392)
    end
    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 1.0% of 365365.4375" do
        @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(3653.654375).of(365365.4375)
    end
    it "total cost of buildings_space_heater_crude_oil should be within 1.0% of 6437.146813" do
        @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(64.37146813000001).of(6437.146813)
    end
    it "total cost of buildings_space_heater_electricity should be within 1.0% of 195.75" do
        @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(1.9575).of(195.75)
    end
    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 1.0% of 575245.5685" do
        @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(5752.455685000001).of(575245.5685)
    end
    it "total cost of buildings_space_heater_network_gas should be within 1.0% of 1808.262988" do
        @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(18.08262988).of(1808.262988)
    end
    it "total cost of buildings_space_heater_solar_thermal should be within 1.0% of 11943.75" do
        @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(119.4375).of(11943.75)
    end
    it "total cost of buildings_space_heater_wood_pellets should be within 1.0% of 9541.083287" do
        @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(95.41083287).of(9541.083287)
    end
    it "total cost of bunkers_p2l_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_bunkers_p2l_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of energy_chp_combined_cycle_network_gas should be within 1.0% of 12381000.0" do
        @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(123810.0).of(12381000.0)
    end
    it "total cost of energy_chp_supercritical_waste_mix should be within 1.0% of 19420910.15" do
        @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(194209.1015).of(19420910.15)
    end
    it "total cost of energy_chp_ultra_supercritical_coal should be within 1.0% of 276268783.3" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(2762687.833).of(276268783.3)
    end
    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 1.0% of 135592935.3" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(1355929.3530000001).of(135592935.3)
    end
    it "total cost of energy_chp_ultra_supercritical_lignite should be within 1.0% of 129225833.3" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(1292258.333).of(129225833.3)
    end
    it "total cost of energy_heat_network_backup_heater_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of energy_heater_for_heat_network_coal should be within 1.0% of 5504023.167" do
        @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(55040.23167000001).of(5504023.167)
    end
    it "total cost of energy_heater_for_heat_network_crude_oil should be within 1.0% of 8608640.942" do
        @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(86086.40942).of(8608640.942)
    end
    it "total cost of energy_heater_for_heat_network_geothermal should be within 1.0% of 793333.3333" do
        @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(7933.3333330000005).of(793333.3333)
    end
    it "total cost of energy_heater_for_heat_network_lignite should be within 1.0% of 100225.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(1002.25).of(100225.0)
    end
    it "total cost of energy_heater_for_heat_network_network_gas should be within 1.0% of 6321027.945" do
        @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(63210.27945).of(6321027.945)
    end
    it "total cost of energy_heater_for_heat_network_waste_mix should be within 1.0% of 40000.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(400.0).of(40000.0)
    end
    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 1.0% of 9716387.629" do
        @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(97163.87629000001).of(9716387.629)
    end
    it "total cost of energy_power_combined_cycle_ccs_coal should be within 1.0% of 178999174.0" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(1789991.74).of(178999174.0)
    end
    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 1.0% of 76566794.3" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(765667.943).of(76566794.3)
    end
    it "total cost of energy_power_combined_cycle_coal should be within 1.0% of 157393563.7" do
        @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(1573935.6369999999).of(157393563.7)
    end
    it "total cost of energy_power_combined_cycle_network_gas should be within 1.0% of 180803216.4" do
        @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(1808032.164).of(180803216.4)
    end
    it "total cost of energy_power_engine_diesel should be within 1.0% of 34000.0" do
        @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(340.0).of(34000.0)
    end
    it "total cost of energy_power_engine_network_gas should be within 1.0% of 26320000.0" do
        @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(263200.0).of(26320000.0)
    end
    it "total cost of energy_power_geothermal should be within 1.0% of 15969915.26" do
        @scenario.total_cost_of_energy_power_geothermal.value.should be_within(159699.1526).of(15969915.26)
    end
    it "total cost of energy_power_hv_network_electricity should be within 1.0% of 47926596.97" do
        @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(479265.9697).of(47926596.97)
    end
    it "total cost of energy_power_hydro_mountain should be within 1.0% of 51155234.43" do
        @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(511552.3443).of(51155234.43)
    end
    it "total cost of energy_power_hydro_river should be within 1.0% of 3000000.0" do
        @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(30000.0).of(3000000.0)
    end
    it "total cost of energy_power_lv_network_electricity should be within 1.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(19.992794019999998).of(1999.279402)
    end
    it "total cost of energy_power_mv_distribution_network_electricity should be within 1.0% of 7789.192549" do
        @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(77.89192549).of(7789.192549)
    end
    it "total cost of energy_power_mv_transport_network_electricity should be within 1.0% of 86884.46792" do
        @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(868.8446792).of(86884.46792)
    end
    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 1.0% of 389718771.8" do
        @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(3897187.7180000003).of(389718771.8)
    end
    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 1.0% of 552526594.8" do
        @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(5525265.948).of(552526594.8)
    end
    it "total cost of energy_power_solar_csp_solar_radiation should be within 1.0% of 15172516.67" do
        @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(151725.1667).of(15172516.67)
    end
    it "total cost of energy_power_solar_pv_solar_radiation should be within 1.0% of 1459010.0" do
        @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(14590.1).of(1459010.0)
    end
    it "total cost of energy_power_supercritical_coal should be within 1.0% of 264584522.7" do
        @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(2645845.227).of(264584522.7)
    end
    it "total cost of energy_power_supercritical_waste_mix should be within 1.0% of 27600432.87" do
        @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(276004.3287).of(27600432.87)
    end
    it "total cost of energy_power_transformer_lv_mv_electricity should be within 1.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(19.992794019999998).of(1999.279402)
    end
    it "total cost of energy_power_transformer_mv_hv_electricity should be within 1.0% of 321203.8165" do
        @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(3212.0381650000004).of(321203.8165)
    end
    it "total cost of energy_power_turbine_hydrogen should be within 1.0% of 6634766.741" do
        @scenario.total_cost_of_energy_power_turbine_hydrogen.value.should be_within(66347.66741000001).of(6634766.741)
    end
    it "total cost of energy_power_turbine_network_gas should be within 1.0% of 6634766.741" do
        @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(66347.66741000001).of(6634766.741)
    end
    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 1.0% of 137557916.7" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(1375579.167).of(137557916.7)
    end
    it "total cost of energy_power_ultra_supercritical_coal should be within 1.0% of 253870375.2" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(2538703.752).of(253870375.2)
    end
    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 1.0% of 117461956.6" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(1174619.5659999999).of(117461956.6)
    end
    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 1.0% of 49359622.37" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(493596.2237).of(49359622.37)
    end
    it "total cost of energy_power_ultra_supercritical_lignite should be within 1.0% of 112037800.0" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(1120378.0).of(112037800.0)
    end
    it "total cost of energy_power_ultra_supercritical_network_gas should be within 1.0% of 29085600.0" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(290856.0).of(29085600.0)
    end
    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 1.0% of 240498185.1" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(2404981.851).of(240498185.1)
    end
    it "total cost of energy_power_wind_turbine_coastal should be within 1.0% of 531768.45" do
        @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(5317.684499999999).of(531768.45)
    end
    it "total cost of energy_power_wind_turbine_inland should be within 1.0% of 531768.45" do
        @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(5317.684499999999).of(531768.45)
    end
    it "total cost of energy_power_wind_turbine_offshore should be within 1.0% of 1643536.011" do
        @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(16435.36011).of(1643536.011)
    end
    it "total cost of households_collective_burner_hydrogen should be within 1.0% of 1139220.897" do
        @scenario.total_cost_of_households_collective_burner_hydrogen.value.should be_within(11392.208970000002).of(1139220.897)
    end
    it "total cost of households_collective_burner_network_gas should be within 1.0% of 409626.5337" do
        @scenario.total_cost_of_households_collective_burner_network_gas.value.should be_within(4096.265337000001).of(409626.5337)
    end
    it "total cost of households_collective_chp_biogas should be within 1.0% of 1691150.702" do
        @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(16911.50702).of(1691150.702)
    end
    it "total cost of households_collective_chp_network_gas should be within 1.0% of 580607.882" do
        @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(5806.07882).of(580607.882)
    end
    it "total cost of households_collective_chp_wood_pellets should be within 1.0% of 2692574.904" do
        @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(26925.749040000002).of(2692574.904)
    end
    it "total cost of households_collective_geothermal should be within 1.0% of 287417.4843" do
        @scenario.total_cost_of_households_collective_geothermal.value.should be_within(2874.1748430000002).of(287417.4843)
    end
    it "total cost of households_collective_heatpump_water_water_electricity should be within 1.0% of 63333.33333" do
        @scenario.total_cost_of_households_collective_heatpump_water_water_electricity.value.should be_within(633.3333333).of(63333.33333)
    end
    it "total cost of households_cooling_airconditioning_electricity should be within 1.0% of 181.0" do
        @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(1.81).of(181.0)
    end
    it "total cost of households_cooling_heatpump_air_water_electricity should be within 1.0% of 923.3333333" do
        @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(9.233333333000001).of(923.3333333)
    end
    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 1.0% of 1226.666667" do
        @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(12.26666667).of(1226.666667)
    end
    it "total cost of households_flexibility_p2h_electricity should be within 1.0% of 21.58866667" do
        @scenario.total_cost_of_households_flexibility_p2h_electricity.value.should be_within(0.21588666669999998).of(21.58866667)
    end
    it "total cost of households_solar_pv_solar_radiation should be within 1.0% of 25.920864" do
        @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(0.25920864000000005).of(25.920864)
    end
    it "total cost of households_space_heater_coal should be within 1.0% of 351.612452" do
        @scenario.total_cost_of_households_space_heater_coal.value.should be_within(3.5161245200000004).of(351.612452)
    end
    it "total cost of households_space_heater_combined_network_gas should be within 1.0% of 400.12225" do
        @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(4.0012225).of(400.12225)
    end
    it "total cost of households_space_heater_crude_oil should be within 1.0% of 542.345401" do
        @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(5.42345401).of(542.345401)
    end
    it "total cost of households_space_heater_electricity should be within 1.0% of 26.0" do
        @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(0.26).of(26.0)
    end
    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 1.0% of 1031.354667" do
        @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(10.313546670000001).of(1031.354667)
    end
    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 1.0% of 1334.688" do
        @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(13.34688).of(1334.688)
    end
    it "total cost of households_space_heater_network_gas should be within 1.0% of 427.2347177" do
        @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(4.272347176999999).of(427.2347177)
    end
    it "total cost of households_space_heater_wood_pellets should be within 1.0% of 752.126982" do
        @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(7.5212698200000005).of(752.126982)
    end
    it "total cost of households_water_heater_network_gas should be within 1.0% of 118.8036223" do
        @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(1.1880362230000001).of(118.8036223)
    end
    it "total cost of households_water_heater_resistive_electricity should be within 1.0% of 14.7" do
        @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.147).of(14.7)
    end
    it "total cost of households_water_heater_solar_thermal should be within 1.0% of 95.55" do
        @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(0.9555).of(95.55)
    end
    it "total cost of industry_aluminium_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of industry_chemicals_fertilizers_burner_coal should be within 1.0% of 5197731.961" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_coal.value.should be_within(51977.319610000006).of(5197731.961)
    end
    it "total cost of industry_chemicals_fertilizers_burner_crude_oil should be within 1.0% of 7573760.817" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_crude_oil.value.should be_within(75737.60817).of(7573760.817)
    end
    it "total cost of industry_chemicals_fertilizers_burner_hydrogen should be within 1.0% of 15439666.45" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_hydrogen.value.should be_within(154396.66449999998).of(15439666.45)
    end
    it "total cost of industry_chemicals_fertilizers_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of industry_chemicals_fertilizers_burner_wood_pellets should be within 1.0% of 9825516.777" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_wood_pellets.value.should be_within(98255.16777000001).of(9825516.777)
    end
    it "total cost of industry_chemicals_other_burner_coal should be within 1.0% of 5197731.961" do
        @scenario.total_cost_of_industry_chemicals_other_burner_coal.value.should be_within(51977.319610000006).of(5197731.961)
    end
    it "total cost of industry_chemicals_other_burner_crude_oil should be within 1.0% of 7573760.817" do
        @scenario.total_cost_of_industry_chemicals_other_burner_crude_oil.value.should be_within(75737.60817).of(7573760.817)
    end
    it "total cost of industry_chemicals_other_burner_hydrogen should be within 1.0% of 15439666.45" do
        @scenario.total_cost_of_industry_chemicals_other_burner_hydrogen.value.should be_within(154396.66449999998).of(15439666.45)
    end
    it "total cost of industry_chemicals_other_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_industry_chemicals_other_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of industry_chemicals_other_burner_wood_pellets should be within 1.0% of 9825516.777" do
        @scenario.total_cost_of_industry_chemicals_other_burner_wood_pellets.value.should be_within(98255.16777000001).of(9825516.777)
    end
    it "total cost of industry_chemicals_other_flexibility_p2h_electricity should be within 1.0% of 400000.0" do
        @scenario.total_cost_of_industry_chemicals_other_flexibility_p2h_electricity.value.should be_within(4000.0).of(400000.0)
    end
    it "total cost of industry_chemicals_other_heater_electricity should be within 1.0% of 454750.0" do
        @scenario.total_cost_of_industry_chemicals_other_heater_electricity.value.should be_within(4547.5).of(454750.0)
    end
    it "total cost of industry_chemicals_other_heatpump_water_water_electricity should be within 1.0% of 173333.3333" do
        @scenario.total_cost_of_industry_chemicals_other_heatpump_water_water_electricity.value.should be_within(1733.333333).of(173333.3333)
    end
    it "total cost of industry_chemicals_other_steam_recompression_electricity should be within 1.0% of 893566.6667" do
        @scenario.total_cost_of_industry_chemicals_other_steam_recompression_electricity.value.should be_within(8935.666667).of(893566.6667)
    end
    it "total cost of industry_chemicals_refineries_burner_coal should be within 1.0% of 5197731.961" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_coal.value.should be_within(51977.319610000006).of(5197731.961)
    end
    it "total cost of industry_chemicals_refineries_burner_crude_oil should be within 1.0% of 7573760.817" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_crude_oil.value.should be_within(75737.60817).of(7573760.817)
    end
    it "total cost of industry_chemicals_refineries_burner_hydrogen should be within 1.0% of 15439666.45" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_hydrogen.value.should be_within(154396.66449999998).of(15439666.45)
    end
    it "total cost of industry_chemicals_refineries_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of industry_chemicals_refineries_burner_wood_pellets should be within 1.0% of 9825516.777" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_wood_pellets.value.should be_within(98255.16777000001).of(9825516.777)
    end
    it "total cost of industry_chemicals_refineries_flexibility_p2h_electricity should be within 1.0% of 400000.0" do
        @scenario.total_cost_of_industry_chemicals_refineries_flexibility_p2h_electricity.value.should be_within(4000.0).of(400000.0)
    end
    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 1.0% of 19071729.92" do
        @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(190717.2992).of(19071729.92)
    end
    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 1.0% of 142751.985" do
        @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(1427.51985).of(142751.985)
    end
    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 1.0% of 12364158.31" do
        @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(123641.5831).of(12364158.31)
    end
    it "total cost of industry_chp_ultra_supercritical_coal should be within 1.0% of 5300353.212" do
        @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(53003.53212).of(5300353.212)
    end
    it "total cost of industry_other_food_burner_coal should be within 1.0% of 5197731.961" do
        @scenario.total_cost_of_industry_other_food_burner_coal.value.should be_within(51977.319610000006).of(5197731.961)
    end
    it "total cost of industry_other_food_burner_crude_oil should be within 1.0% of 7573760.817" do
        @scenario.total_cost_of_industry_other_food_burner_crude_oil.value.should be_within(75737.60817).of(7573760.817)
    end
    it "total cost of industry_other_food_burner_hydrogen should be within 1.0% of 15439666.45" do
        @scenario.total_cost_of_industry_other_food_burner_hydrogen.value.should be_within(154396.66449999998).of(15439666.45)
    end
    it "total cost of industry_other_food_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_industry_other_food_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of industry_other_food_burner_wood_pellets should be within 1.0% of 9825516.777" do
        @scenario.total_cost_of_industry_other_food_burner_wood_pellets.value.should be_within(98255.16777000001).of(9825516.777)
    end
    it "total cost of industry_other_food_flexibility_p2h_electricity should be within 1.0% of 400000.0" do
        @scenario.total_cost_of_industry_other_food_flexibility_p2h_electricity.value.should be_within(4000.0).of(400000.0)
    end
    it "total cost of industry_other_food_heater_electricity should be within 1.0% of 454750.0" do
        @scenario.total_cost_of_industry_other_food_heater_electricity.value.should be_within(4547.5).of(454750.0)
    end
    it "total cost of industry_other_metals_burner_network_gas should be within 1.0% of 4211732.823" do
        @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(42117.32823).of(4211732.823)
    end
    it "total cost of industry_other_paper_burner_coal should be within 1.0% of 5197731.961" do
        @scenario.total_cost_of_industry_other_paper_burner_coal.value.should be_within(51977.319610000006).of(5197731.961)
    end
    it "total cost of industry_other_paper_burner_crude_oil should be within 1.0% of 7573760.817" do
        @scenario.total_cost_of_industry_other_paper_burner_crude_oil.value.should be_within(75737.60817).of(7573760.817)
    end
    it "total cost of industry_other_paper_burner_hydrogen should be within 1.0% of 15439666.45" do
        @scenario.total_cost_of_industry_other_paper_burner_hydrogen.value.should be_within(154396.66449999998).of(15439666.45)
    end
    it "total cost of industry_other_paper_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_industry_other_paper_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of industry_other_paper_burner_wood_pellets should be within 1.0% of 9825516.777" do
        @scenario.total_cost_of_industry_other_paper_burner_wood_pellets.value.should be_within(98255.16777000001).of(9825516.777)
    end
    it "total cost of industry_other_paper_flexibility_p2h_electricity should be within 1.0% of 400000.0" do
        @scenario.total_cost_of_industry_other_paper_flexibility_p2h_electricity.value.should be_within(4000.0).of(400000.0)
    end
    it "total cost of industry_other_paper_heater_electricity should be within 1.0% of 454750.0" do
        @scenario.total_cost_of_industry_other_paper_heater_electricity.value.should be_within(4547.5).of(454750.0)
    end
    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 1.0% of 3777132.236" do
        @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(37771.32236).of(3777132.236)
    end
    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 1.0% of 5339511.866" do
        @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(53395.11866000001).of(5339511.866)
    end
    it "total cost of other_burner_coal should be within 1.0% of 5197731.961" do
        @scenario.total_cost_of_other_burner_coal.value.should be_within(51977.319610000006).of(5197731.961)
    end
    it "total cost of other_burner_crude_oil should be within 1.0% of 392026.1973" do
        @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(3920.261973).of(392026.1973)
    end
    it "total cost of other_burner_network_gas should be within 1.0% of 264152.4336" do
        @scenario.total_cost_of_other_burner_network_gas.value.should be_within(2641.524336).of(264152.4336)
    end
    it "total cost of other_burner_wood_pellets should be within 1.0% of 510287.1814" do
        @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(5102.871814).of(510287.1814)
    end

  end
end
