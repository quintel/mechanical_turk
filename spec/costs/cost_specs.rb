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

    # The three transport queries do not exist. Also the costs of these technologies it presently 0.

    it "total cost of households_water_heater_hybrid_hydrogen_heatpump_air_water_electricity should be within 1.0% of 0.0" do
        @scenario.total_cost_of_households_water_heater_hybrid_hydrogen_heatpump_air_water_electricity.value.should be_within(0.0).of(0.0)
    end


    it "total cost of transport_car_using_electricity should be within 1.0% of 0.0" do
        pending("Query bestaat niet")
        @scenario.total_cost_of_transport_car_using_electricity.value.should be_within(0.0).of(0.0)
    end

    it "total cost of transport_car_using_hydrogen should be within 1.0% of 0.0" do
        pending("Query bestaat niet")
        @scenario.total_cost_of_transport_car_using_hydrogen.value.should be_within(0.0).of(0.0)
    end
    it "total cost of industry_other_food_burner_wood_pellets should be within 1.0% of 10039566.001611115" do
        @scenario.total_cost_of_industry_other_food_burner_wood_pellets.value.should be_within(100395.66001611116).of(10039566.001611115)
    end
    it "total cost of industry_chemicals_refineries_burner_wood_pellets should be within 1.0% of 10039566.001611115" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_wood_pellets.value.should be_within(100395.66001611116).of(10039566.001611115)
    end
    it "total cost of industry_other_paper_burner_wood_pellets should be within 1.0% of 10039566.001611115" do
        @scenario.total_cost_of_industry_other_paper_burner_wood_pellets.value.should be_within(100395.66001611116).of(10039566.001611115)
    end
    it "total cost of industry_chemicals_other_burner_wood_pellets should be within 1.0% of 10039566.001611115" do
        @scenario.total_cost_of_industry_chemicals_other_burner_wood_pellets.value.should be_within(100395.66001611116).of(10039566.001611115)
    end
    it "total cost of industry_chemicals_fertilizers_burner_wood_pellets should be within 1.0% of 10039566.001611115" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_wood_pellets.value.should be_within(100395.66001611116).of(10039566.001611115)
    end
    it "total cost of energy_power_combined_cycle_coal should be within 1.0% of 103406930.26666667" do
        @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(1034069.3026666667).of(103406930.26666667)
    end
    it "total cost of energy_power_geothermal should be within 1.0% of 10929661.019000001" do
        @scenario.total_cost_of_energy_power_geothermal.value.should be_within(109296.61019000002).of(10929661.019000001)
    end
    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 1.0% of 1096.6666666666665" do
        @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(10.966666666666665).of(1096.6666666666665)
    end
    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 1.0% of 112460358.70362969" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(1124603.587036297).of(112460358.70362969)
    end
    it "total cost of households_water_heater_network_gas should be within 1.0% of 113.95338910549117" do
        @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(1.1395338910549118).of(113.95338910549117)
    end
    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 1.0% of 1192.224" do
        @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(11.92224).of(1192.224)
    end
    it "total cost of buildings_space_heater_solar_thermal should be within 1.0% of 11943.75" do
        @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(119.4375).of(11943.75)
    end
    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 1.0% of 1195212.600691887" do
        @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(11952.12600691887).of(1195212.600691887)
    end
    #deze hoort stuk
    it "total cost of energy_heat_solar_thermal should be within 1.0% of 1260084.83128" do
        pending("query does not exist")
        @scenario.total_cost_of_energy_heat_solar_thermal.value.should be_within(12600.8483128).of(1260084.83128)
    end
    it "total cost of energy_power_wind_turbine_offshore should be within 1.0% of 1265969.135600175" do
        @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(12659.691356001751).of(1265969.135600175)
    end
    it "total cost of households_water_heater_resistive_electricity should be within 1.0% of 13.35" do
        @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.1335).of(13.35)
    end
    it "total cost of industry_chemicals_other_heatpump_water_water_electricity should be within 1.0% of 135833.3333333333" do
        @scenario.total_cost_of_industry_chemicals_other_heatpump_water_water_electricity.value.should be_within(1358.3333333333333).of(135833.3333333333)
    end
    it "total cost of energy_power_solar_pv_solar_radiation should be within 1.0% of 1370168.0" do
        @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(13701.68).of(1370168.0)
    end

    it "total cost of energy_heat_burner_wood_pellets should be within 1.0% of 1373038.983673347" do
        pending("query does not exist")
        @scenario.total_cost_of_energy_heat_burner_wood_pellets.value.should be_within(13730.38983673347).of(1373038.983673347)
    end
    it "total cost of energy_chp_supercritical_waste_mix should be within 1.0% of 14167352.622264752" do
        @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(141673.52622264752).of(14167352.622264752)
    end
    it "total cost of energy_power_combined_cycle_ccs_coal should be within 1.0% of 148752074.1857581" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(1487520.741857581).of(148752074.1857581)
    end
    it "total cost of industry_chemicals_refineries_burner_hydrogen should be within 1.0% of 15259666.448" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_hydrogen.value.should be_within(152596.66448).of(15259666.448)
    end
    it "total cost of industry_chemicals_other_burner_hydrogen should be within 1.0% of 15259666.448" do
        @scenario.total_cost_of_industry_chemicals_other_burner_hydrogen.value.should be_within(152596.66448).of(15259666.448)
    end
    it "total cost of industry_other_paper_burner_hydrogen should be within 1.0% of 15259666.448" do
        @scenario.total_cost_of_industry_other_paper_burner_hydrogen.value.should be_within(152596.66448).of(15259666.448)
    end
    it "total cost of industry_other_food_burner_hydrogen should be within 1.0% of 15259666.448" do
        @scenario.total_cost_of_industry_other_food_burner_hydrogen.value.should be_within(152596.66448).of(15259666.448)
    end
    it "total cost of industry_chemicals_fertilizers_burner_hydrogen should be within 1.0% of 15259666.448" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_hydrogen.value.should be_within(152596.66448).of(15259666.448)
    end
    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 1.0% of 157918985.0913642" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(1579189.850913642).of(157918985.0913642)
    end
    it "total cost of households_cooling_airconditioning_electricity should be within 1.0% of 163.0" do
        @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(1.6300000000000001).of(163.0)
    end
    it "total cost of buildings_space_heater_electricity should be within 1.0% of 175.5" do
        @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(1.7550000000000001).of(175.5)
    end
    it "total cost of buildings_space_heater_network_gas should be within 1.0% of 1786.8431262453223" do
        @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(17.868431262453225).of(1786.8431262453223)
    end
    it "total cost of buildings_cooling_airconditioning_electricity should be within 1.0% of 181.0" do
        @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(1.81).of(181.0)
    end
    it "total cost of energy_power_engine_network_gas should be within 1.0% of 18208000.0" do
        @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(182080.0).of(18208000.0)
    end

    it "total cost of energy_heat_burner_coal should be within 1.0% of 1839111.111111114" do
        pending("query does not exist")
        @scenario.total_cost_of_energy_heat_burner_coal.value.should be_within(18391.111111111142).of(1839111.111111114)
    end

    it "total cost of energy_chp_local_wood_pellets should be within 1.0% of 1847070.0" do
        pending("query does not exist")
        @scenario.total_cost_of_energy_chp_local_wood_pellets.value.should be_within(18470.7).of(1847070.0)
    end
    it "total cost of energy_power_hydro_river should be within 1.0% of 1872000.0" do
        @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(18720.0).of(1872000.0)
    end
    it "total cost of energy_power_ultra_supercritical_network_gas should be within 1.0% of 18789600.0" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(187896.0).of(18789600.0)
    end
    it "total cost of energy_power_supercritical_waste_mix should be within 1.0% of 18824662.077491812" do
        @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(188246.62077491812).of(18824662.077491812)
    end
    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 1.0% of 19.44027083333333" do
        @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(0.19440270833333329).of(19.44027083333333)
    end
    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 1.0% of 19.44027083333333" do
        @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(0.19440270833333329).of(19.44027083333333)
    end
    it "total cost of energy_power_combined_cycle_network_gas should be within 1.0% of 191396015.8675468" do
        @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(1913960.158675468).of(191396015.8675468)
    end
    it "total cost of energy_power_lv_network_electricity should be within 1.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(19.992794019999998).of(1999.279402)
    end
    it "total cost of energy_power_transformer_lv_mv_electricity should be within 1.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(19.992794019999998).of(1999.279402)
    end
    it "total cost of industry_chp_ultra_supercritical_coal should be within 1.0% of 206682382.91118997" do
        @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(2066823.8291118997).of(206682382.91118997)
    end
    it "total cost of energy_power_engine_diesel should be within 1.0% of 21600.0" do
        @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(216.0).of(21600.0)
    end
    it "total cost of energy_power_ultra_supercritical_coal should be within 1.0% of 217435647.30681702" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(2174356.4730681702).of(217435647.30681702)
    end
    it "total cost of households_solar_pv_solar_radiation should be within 1.0% of 22.342432000000006" do
        @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(0.22342432000000007).of(22.342432000000006)
    end
    it "total cost of households_space_heater_electricity should be within 1.0% of 23.0" do
        @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(0.23).of(23.0)
    end

    it "total cost of energy_chp_local_engine_biogas should be within 1.0% of 2334130.2321116286" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_chp_local_engine_biogas.value.should be_within(23341.302321116287).of(2334130.2321116286)
    end
    it "total cost of energy_chp_ultra_supercritical_coal should be within 1.0% of 237807148.47097385" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(2378071.4847097388).of(237807148.47097385)
    end
    it "total cost of energy_power_supercritical_coal should be within 1.0% of 241075302.62073028" do
        @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(2410753.0262073027).of(241075302.62073028)
    end
    it "total cost of buildings_solar_pv_solar_radiation should be within 1.0% of 25.920984480000005" do
        @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(0.25920984480000003).of(25.920984480000005)
    end
    it "total cost of agriculture_burner_network_gas should be within 1.0% of 254938.1032552872" do
        @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(2549.381032552872).of(254938.1032552872)
    end
    it "total cost of other_burner_network_gas should be within 1.0% of 254938.1032552872" do
        @scenario.total_cost_of_other_burner_network_gas.value.should be_within(2549.381032552872).of(254938.1032552872)
    end

    it "total cost of energy_heat_burner_hydrogen should be within 1.0% of 28120.0" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_heat_burner_hydrogen.value.should be_within(281.2).of(28120.0)
    end
    it "total cost of agriculture_geothermal should be within 1.0% of 2998986.6666666665" do
        @scenario.total_cost_of_agriculture_geothermal.value.should be_within(29989.866666666665).of(2998986.6666666665)
    end

    it "total cost of industry_chp_wood_pellets should be within 1.0% of 3004875.0" do
        pending("Query does not exist")
        @scenario.total_cost_of_industry_chp_wood_pellets.value.should be_within(30048.75).of(3004875.0)
    end
    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 1.0% of 3004875.0" do
        @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(30048.75).of(3004875.0)
    end
    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 1.0% of 301718771.83409464" do
        @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(3017187.7183409464).of(301718771.83409464)
    end

    it "total cost of energy_heat_well_geothermal should be within 1.0% of 3034621.333333333" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_heat_well_geothermal.value.should be_within(30346.21333333333).of(3034621.333333333)
    end
    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 1.0% of 305215.75092497125" do
        @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(3052.1575092497123).of(305215.75092497125)
    end
    it "total cost of industry_chemicals_refineries_flexibility_p2h_network_gas_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_chemicals_refineries_flexibility_p2h_network_gas_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of industry_other_food_flexibility_p2h_hydrogen_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_other_food_flexibility_p2h_hydrogen_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of industry_other_paper_flexibility_p2h_network_gas_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_other_paper_flexibility_p2h_network_gas_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of industry_other_food_flexibility_p2h_network_gas_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_other_food_flexibility_p2h_network_gas_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of industry_chemicals_refineries_flexibility_p2h_hydrogen_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_chemicals_refineries_flexibility_p2h_hydrogen_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of industry_chemicals_other_flexibility_p2h_network_gas_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_chemicals_other_flexibility_p2h_network_gas_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of industry_chemicals_other_flexibility_p2h_hydrogen_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_chemicals_other_flexibility_p2h_hydrogen_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of industry_other_paper_flexibility_p2h_hydrogen_electricity should be within 1.0% of 310000.0" do
        @scenario.total_cost_of_industry_other_paper_flexibility_p2h_hydrogen_electricity.value.should be_within(3100.0).of(310000.0)
    end
    it "total cost of energy_power_hydro_mountain should be within 1.0% of 31128799.427178062" do
        @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(311287.99427178066).of(31128799.427178062)
    end
    it "total cost of energy_power_transformer_mv_hv_electricity should be within 1.0% of 321203.8165" do
        @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(3212.0381650000004).of(321203.8165)
    end
    it "total cost of households_space_heater_coal should be within 1.0% of 331.8124519798385" do
        @scenario.total_cost_of_households_space_heater_coal.value.should be_within(3.318124519798385).of(331.8124519798385)
    end
    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 1.0% of 334554.875" do
        @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(3345.54875).of(334554.875)
    end
    it "total cost of households_water_heater_hybrid_heatpump_air_water_electricity should be within 1.0% of 34.87478226001358" do
        @scenario.total_cost_of_households_water_heater_hybrid_heatpump_air_water_electricity.value.should be_within(0.3487478226001358).of(34.87478226001358)
    end
    it "total cost of households_water_heater_combined_network_gas should be within 1.0% of 34.874782260013795" do
        @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(0.348747822600138).of(34.874782260013795)
    end
    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 1.0% of 3596216.8985102726" do
        @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(35962.168985102726).of(3596216.8985102726)
    end

    it "total cost of energy_heat_backup_burner_network_gas should be within 1.0% of 36200.0" do
        pending("Query doe snot exist")
        @scenario.total_cost_of_energy_heat_backup_burner_network_gas.value.should be_within(362.0).of(36200.0)
    end
    it "total cost of industry_chemicals_other_heater_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_chemicals_other_heater_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_food_heater_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_food_heater_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_paper_heater_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_paper_heater_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 1.0% of 36619622.3692314" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(366196.22369231406).of(36619622.3692314)
    end
    it "total cost of agriculture_burner_crude_oil should be within 1.0% of 383026.19731901994" do
        @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(3830.2619731901996).of(383026.19731901994)
    end
    it "total cost of other_burner_crude_oil should be within 1.0% of 383026.19731901994" do
        @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(3830.2619731901996).of(383026.19731901994)
    end
    it "total cost of households_space_heater_combined_network_gas should be within 1.0% of 384.9576699407937" do
        @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(3.8495766994079372).of(384.9576699407937)
    end
    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 1.0% of 385.0" do
        @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(3.85).of(385.0)
    end
    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 1.0% of 396120344.7712419" do
        @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(3961203.447712419).of(396120344.7712419)
    end
    it "total cost of energy_power_wind_turbine_coastal should be within 1.0% of 401478.42000000004" do
        @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(4014.7842000000005).of(401478.42000000004)
    end
    it "total cost of energy_power_wind_turbine_inland should be within 1.0% of 401478.42000000004" do
        @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(4014.7842000000005).of(401478.42000000004)
    end
    it "total cost of industry_other_metals_burner_network_gas should be within 1.0% of 4031417.244197137" do
        @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(40314.17244197137).of(4031417.244197137)
    end

    it "total cost of energy_heat_burner_network_gas should be within 1.0% of 408142.65007717087" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_heat_burner_network_gas.value.should be_within(4081.4265007717086).of(408142.65007717087)
    end
    it "total cost of households_space_heater_network_gas should be within 1.0% of 414.01520895019974" do
        @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(4.140152089501997).of(414.01520895019974)
    end
    it "total cost of energy_power_turbine_network_gas should be within 1.0% of 4174886.9414999997" do
        @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(41748.869415).of(4174886.9414999997)
    end
    it "total cost of other_burner_coal should be within 1.0% of 4597833.7488706345" do
        @scenario.total_cost_of_other_burner_coal.value.should be_within(45978.33748870635).of(4597833.7488706345)
    end
    it "total cost of industry_chemicals_other_burner_coal should be within 1.0% of 4597833.7488706345" do
        @scenario.total_cost_of_industry_chemicals_other_burner_coal.value.should be_within(45978.33748870635).of(4597833.7488706345)
    end
    it "total cost of industry_other_food_burner_coal should be within 1.0% of 4597833.7488706345" do
        @scenario.total_cost_of_industry_other_food_burner_coal.value.should be_within(45978.33748870635).of(4597833.7488706345)
    end
    it "total cost of industry_chemicals_refineries_burner_coal should be within 1.0% of 4597833.7488706345" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_coal.value.should be_within(45978.33748870635).of(4597833.7488706345)
    end
    it "total cost of industry_other_paper_burner_coal should be within 1.0% of 4597833.7488706345" do
        @scenario.total_cost_of_industry_other_paper_burner_coal.value.should be_within(45978.33748870635).of(4597833.7488706345)
    end
    it "total cost of industry_chemicals_fertilizers_burner_coal should be within 1.0% of 4597833.7488706345" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_coal.value.should be_within(45978.33748870635).of(4597833.7488706345)
    end
    it "total cost of buildings_space_heater_coal should be within 1.0% of 4780.84391975403" do
        @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(47.8084391975403).of(4780.84391975403)
    end
    it "total cost of energy_power_hv_network_electricity should be within 1.0% of 47926596.97" do
        @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(479265.9697).of(47926596.97)
    end

    it "total cost of energy_heat_heatpump_water_water_electricity should be within 1.0% of 48333.333333333336" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_heat_heatpump_water_water_electricity.value.should be_within(483.33333333333337).of(48333.333333333336)
    end

    it "total cost of industry_heat_burner_coal should be within 1.0% of 4904358.48639947" do
        pending("Query does not exist")
        @scenario.total_cost_of_industry_heat_burner_coal.value.should be_within(49043.5848639947).of(4904358.48639947)
    end
    it "total cost of bunkers_p2l_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_bunkers_p2l_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end
    it "total cost of industry_chemicals_refineries_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end
    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end
    it "total cost of industry_chemicals_other_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_industry_chemicals_other_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end
    it "total cost of industry_aluminium_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end
    it "total cost of industry_other_paper_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_industry_other_paper_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end
    it "total cost of industry_chemicals_fertilizers_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end
    it "total cost of industry_other_food_burner_network_gas should be within 1.0% of 5156470.879087016" do
        @scenario.total_cost_of_industry_other_food_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end

    it "total cost of industry_heat_backup_burner_network_gas should be within 1.0% of 5156470.879087016" do
        pending("Query does not exist")
        @scenario.total_cost_of_industry_heat_backup_burner_network_gas.value.should be_within(51564.70879087016).of(5156470.879087016)
    end

    it "total cost of energy_power_combined_cycle_hydrogen should be within 1.0% of 51783891.66666667" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_power_combined_cycle_hydrogen.value.should be_within(517838.91666666674).of(51783891.66666667)
    end
    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 1.0% of 52000.0" do
        @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(520.0).of(52000.0)
    end
    it "total cost of households_space_heater_crude_oil should be within 1.0% of 521.345401010643" do
        @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(5.21345401010643).of(521.345401010643)
    end
    it "total cost of agriculture_burner_wood_pellets should be within 1.0% of 523090.5823189701" do
        @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(5230.905823189702).of(523090.5823189701)
    end
    it "total cost of other_burner_wood_pellets should be within 1.0% of 523090.5823189701" do
        @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(5230.905823189702).of(523090.5823189701)
    end
    it "total cost of energy_power_turbine_hydrogen should be within 1.0% of 5404826.841375" do
        @scenario.total_cost_of_energy_power_turbine_hydrogen.value.should be_within(54048.26841375).of(5404826.841375)
    end
    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 1.0% of 555860.9103089975" do
        @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(5558.609103089975).of(555860.9103089975)
    end
    it "total cost of households_space_heater_hybrid_heatpump_air_water_electricity should be within 1.0% of 613.9384272776455" do
        @scenario.total_cost_of_households_space_heater_hybrid_heatpump_air_water_electricity.value.should be_within(6.1393842727764545).of(613.9384272776455)
    end

    it "total cost of energy_heat_burner_crude_oil should be within 1.0% of 620000.0" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_heat_burner_crude_oil.value.should be_within(6200.0).of(620000.0)
    end
    it "total cost of buildings_space_heater_crude_oil should be within 1.0% of 6252.546813425862" do
        @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(62.52546813425862).of(6252.546813425862)
    end
    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 1.0% of 64637681.224478215" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(646376.8122447821).of(64637681.224478215)
    end
    it "total cost of households_space_heater_hybrid_hydrogen_heatpump_air_water_electricity should be within 1.0% of 698.3333333333333" do
        @scenario.total_cost_of_households_space_heater_hybrid_hydrogen_heatpump_air_water_electricity.value.should be_within(6.9833333333333325).of(698.3333333333333)
    end

    it "total cost of energy_heat_burner_waste_mix should be within 1.0% of 7214921.4" do
        pending("Query does not exist")
        @scenario.total_cost_of_energy_heat_burner_waste_mix.value.should be_within(72149.214).of(7214921.4)
    end
    it "total cost of industry_chemicals_other_steam_recompression_electricity should be within 1.0% of 722626.6666666667" do
        @scenario.total_cost_of_industry_chemicals_other_steam_recompression_electricity.value.should be_within(7226.266666666667).of(722626.6666666667)
    end
    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 1.0% of 728116.6608810537" do
        @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(7281.166608810537).of(728116.6608810537)
    end
    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 1.0% of 739.0626666666666" do
        @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(7.390626666666666).of(739.0626666666666)
    end
    it "total cost of industry_chemicals_refineries_burner_crude_oil should be within 1.0% of 7391315.826864992" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_crude_oil.value.should be_within(73913.15826864993).of(7391315.826864992)
    end
    it "total cost of industry_other_food_burner_crude_oil should be within 1.0% of 7391315.826864992" do
        @scenario.total_cost_of_industry_other_food_burner_crude_oil.value.should be_within(73913.15826864993).of(7391315.826864992)
    end
    it "total cost of industry_chemicals_other_burner_crude_oil should be within 1.0% of 7391315.826864992" do
        @scenario.total_cost_of_industry_chemicals_other_burner_crude_oil.value.should be_within(73913.15826864993).of(7391315.826864992)
    end
    it "total cost of industry_other_paper_burner_crude_oil should be within 1.0% of 7391315.826864992" do
        @scenario.total_cost_of_industry_other_paper_burner_crude_oil.value.should be_within(73913.15826864993).of(7391315.826864992)
    end
    it "total cost of industry_chemicals_fertilizers_burner_crude_oil should be within 1.0% of 7391315.826864992" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_crude_oil.value.should be_within(73913.15826864993).of(7391315.826864992)
    end
    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 1.0% of 75758695.6725" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(757586.956725).of(75758695.6725)
    end
    it "total cost of households_space_heater_wood_pellets should be within 1.0% of 758.0661285410681" do
        @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(7.580661285410681).of(758.0661285410681)
    end
    it "total cost of agriculture_burner_hydrogen should be within 1.0% of 762983.3224000001" do
        @scenario.total_cost_of_agriculture_burner_hydrogen.value.should be_within(7629.833224000001).of(762983.3224000001)
    end
    it "total cost of energy_power_ultra_supercritical_lignite should be within 1.0% of 77119800.0" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(771198.0).of(77119800.0)
    end
    it "total cost of energy_power_mv_distribution_network_electricity should be within 1.0% of 7789.192549" do
        @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(77.89192549).of(7789.192549)
    end
    it "total cost of households_cooling_heatpump_air_water_electricity should be within 1.0% of 828.3333333333334" do
        @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(8.283333333333333).of(828.3333333333334)
    end
    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 1.0% of 8286000.0" do
        @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(82860.0).of(8286000.0)
    end
    it "total cost of energy_chp_combined_cycle_network_gas should be within 1.0% of 8290829.471918963" do
        @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(82908.29471918962).of(8290829.471918963)
    end
    it "total cost of households_water_heater_solar_thermal should be within 1.0% of 84.0" do
        @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(0.84).of(84.0)
    end

    it "total cost of industry_heat_burner_crude_oil should be within 1.0% of 8425822.411524922" do
        pending("Query does not exist")
        @scenario.total_cost_of_industry_heat_burner_crude_oil.value.should be_within(84258.22411524922).of(8425822.411524922)
    end

    it "total cost of energy_chp_local_engine_network_gas should be within 1.0% of 85200.0" do
         pending("Query does not exist")
        @scenario.total_cost_of_energy_chp_local_engine_network_gas.value.should be_within(852.0).of(85200.0)
    end
    it "total cost of energy_power_mv_transport_network_electricity should be within 1.0% of 86884.46792" do
        @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(868.8446792).of(86884.46792)
    end

    it "total cost of industry_heat_well_geothermal should be within 1.0% of 8920760.0" do
        pending("Query does not exist")
        @scenario.total_cost_of_industry_heat_well_geothermal.value.should be_within(89207.6).of(8920760.0)
    end

    it "total cost of industry_heat_burner_lignite should be within 1.0% of 91225.0" do
        pending("Query does not exist")
        @scenario.total_cost_of_industry_heat_burner_lignite.value.should be_within(912.25).of(91225.0)
    end
    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 1.0% of 923.8906666666667" do
        @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(9.238906666666667).of(923.8906666666667)
    end
    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 1.0% of 92556304.83625" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(925563.0483625).of(92556304.83625)
    end
    it "total cost of energy_chp_ultra_supercritical_lignite should be within 1.0% of 92878333.33333333" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(928783.3333333333).of(92878333.33333333)
    end
    it "total cost of buildings_space_heater_wood_pellets should be within 1.0% of 9703.992111992311" do
        @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(97.03992111992311).of(9703.992111992311)
    end
    it "total cost of energy_power_solar_csp_solar_radiation should be within 1.0% of 9835016.666666666" do
        @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(98350.16666666666).of(9835016.666666666)
    end

  end
end
