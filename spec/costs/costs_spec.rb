#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
        settings_enable_merit_order: 0
      })
  end

  #Checking for change
  context "Testing all converters with total cost" do
      it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2723593.923" do
        @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(136179.69615).of(2723593.923)
      end

      it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 481754.341201186" do
        @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(24087.7170600593).of(481754.341201186)
      end

      it "total cost of buildings_chp_engine_biogas should be within 5.0% of 1691150.702" do
        @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(84557.53510000001).of(1691150.702)
      end

      it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 1735.488" do
        @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(86.77440000000001).of(1735.488)
      end

      it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
        @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
      end

      it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
        @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
      end

      it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
        @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
      end

      it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2723593.923" do
        @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(136179.69615).of(2723593.923)
      end

      it "total cost of households_collective_chp_biogas should be within 5.0% of 1691150.702" do
        @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(84557.53510000001).of(1691150.702)
      end

      it "total cost of households_collective_chp_network_gas should be within 5.0% of 481754.341201186" do
        @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(24087.7170600593).of(481754.341201186)
      end

      it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 152.4992" do
        @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(7.624960000000001).of(152.4992)
      end

      it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 410003.4729609488" do
        @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(20500.173648047443).of(410003.4729609488)
      end

      it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2615893.923" do
        @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(130794.69615).of(2615893.923)
      end

      it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 1691150.702" do
        @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(84557.53510000001).of(1691150.702)
      end

      it "total cost of energy_power_turbine_network_gas should be within 5.0% of 7940049.73112542" do
        @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(397002.48655627103).of(7940049.73112542)
      end

      it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
        @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
      end

      it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 180362817.92451668" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(9018140.896225834).of(180362817.92451668)
      end

      it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 370231864.27765286" do
        @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(18511593.213882644).of(370231864.27765286)
      end

      it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27436675.0" do
        @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1371833.75).of(27436675.0)
      end

      it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 109907064.92930791" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(5495353.246465396).of(109907064.92930791)
      end

      it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 1605000.0" do
        @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(80250.0).of(1605000.0)
      end

      it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15172516.67" do
        @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(758625.8335000001).of(15172516.67)
      end

      it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 32722456.871523324" do
        @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(1636122.8435761663).of(32722456.871523324)
      end

      it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 621647870.6" do
        @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(31082393.53).of(621647870.6)
      end

      it "total cost of energy_power_hydro_mountain should be within 5.0% of 56752467.81" do
        @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(2837623.3905).of(56752467.81)
      end

      it "total cost of energy_power_wind_turbine_inland should be within 5.0% of 531768.45" do
        @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(26588.4225).of(531768.45)
      end

      it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 308456105.73974264" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(15422805.286987133).of(308456105.73974264)
      end

      it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 174254993.33333334" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(8712749.666666668).of(174254993.33333334)
      end

      it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
        @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
      end

      it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 182240580.89158583" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(9112029.044579292).of(182240580.89158583)
      end

      it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 101031648.80290158" do
        @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(5051582.440145079).of(101031648.80290158)
      end

      it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 61003442.271372035" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3050172.113568602).of(61003442.271372035)
      end

      it "total cost of energy_power_supercritical_coal should be within 5.0% of 176715434.82276618" do
        @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(8835771.74113831).of(176715434.82276618)
      end

      it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
        @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
      end

      it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 217664361.4458167" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(10883218.072290836).of(217664361.4458167)
      end

      it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 172101877.24902764" do
        @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(8605093.862451382).of(172101877.24902764)
      end

      it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 316616910.9672986" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15830845.548364932).of(316616910.9672986)
      end

      it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 180621881.92000002" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9031094.096).of(180621881.92000002)
      end

      it "total cost of energy_power_engine_network_gas should be within 5.0% of 26332341.010042574" do
        @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(1316617.050502129).of(26332341.010042574)
      end

      it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 351634897.8096628" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(17581744.89048314).of(351634897.8096628)
      end

      it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
        @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
      end

      it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 236606152.2528713" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(11830307.612643566).of(236606152.2528713)
      end

      it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
        @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
      end

      it "total cost of energy_power_engine_diesel should be within 5.0% of 880923.6367735319" do
        @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(44046.181838676595).of(880923.6367735319)
      end

      it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 11099776.988790076" do
        @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(554988.8494395039).of(11099776.988790076)
      end

      it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 18839738.58454066" do
        @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(941986.9292270332).of(18839738.58454066)
      end

      it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 125146.50123322578" do
        @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(6257.3250616612895).of(125146.50123322578)
      end

      it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 3936924.669527759" do
        @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(196846.23347638795).of(3936924.669527759)
      end

      it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 184781302.86381894" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(9239065.143190948).of(184781302.86381894)
      end

      it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 5.0% of 1314033.788" do
        @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(65701.6894).of(1314033.788)
      end

      it "total cost of buildings_space_heater_coal should be within 5.0% of 4163.775772999855" do
        @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(208.18878864999274).of(4163.775772999855)
      end

      it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9658.109823" do
        @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(482.90549115000005).of(9658.109823)
      end

      it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
        @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
      end

      it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 551958.3895055096" do
        @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(27597.919475275485).of(551958.3895055096)
      end

      it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.5" do
        @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.375).of(13387.5)
      end

      it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.75" do
        @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.787500000000001).of(195.75)
      end

      it "total cost of buildings_collective_geothermal should be within 5.0% of 287417.4843" do
        @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
      end

      it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
        @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
      end

      it "total cost of buildings_space_heater_network_gas should be within 5.0% of 1427.5898716671727" do
        @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(71.37949358335864).of(1427.5898716671727)
      end

      it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
        @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
      end

      it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 716858.8518496562" do
        @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(35842.94259248281).of(716858.8518496562)
      end

      it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 5267.561208059966" do
        @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(263.3780604029983).of(5267.561208059966)
      end

      it "total cost of buildings_cooling_airconditioning_electricity should be within 5.0% of 199.0" do
        @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(9.950000000000001).of(199.0)
      end

      it "total cost of industry_chemicals_fertilizers_burner_coal should be within 5.0% of 3764495.877318696" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_coal.value.should be_within(188224.79386593483).of(3764495.877318696)
      end

      it "total cost of industry_chemicals_fertilizers_burner_crude_oil should be within 5.0% of 5660830.166405634" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_crude_oil.value.should be_within(283041.5083202817).of(5660830.166405634)
      end

      it "total cost of industry_chemicals_fertilizers_burner_network_gas should be within 5.0% of 4169974.9324314347" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_network_gas.value.should be_within(208498.74662157174).of(4169974.9324314347)
      end

      it "total cost of industry_chemicals_fertilizers_burner_wood_pellets should be within 5.0% of 10014215.81" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_wood_pellets.value.should be_within(500710.79050000006).of(10014215.81)
      end

      it "total cost of industry_chemicals_other_burner_coal should be within 5.0% of 3764495.877318696" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_coal.value.should be_within(188224.79386593483).of(3764495.877318696)
      end

      it "total cost of industry_chemicals_other_burner_crude_oil should be within 5.0% of 5660830.166405634" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_crude_oil.value.should be_within(283041.5083202817).of(5660830.166405634)
      end

      it "total cost of industry_chemicals_other_burner_network_gas should be within 5.0% of 4169974.9324314347" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_network_gas.value.should be_within(208498.74662157174).of(4169974.9324314347)
      end

      it "total cost of industry_chemicals_other_burner_wood_pellets should be within 5.0% of 10014215.81" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_wood_pellets.value.should be_within(500710.79050000006).of(10014215.81)
      end

      it "total cost of industry_chemicals_refineries_burner_coal should be within 5.0% of 3764495.877318696" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_coal.value.should be_within(188224.79386593483).of(3764495.877318696)
      end

      it "total cost of industry_chemicals_refineries_burner_crude_oil should be within 5.0% of 5660830.166405634" do
        @scenario.total_cost_of_industry_chemicals_other_burner_crude_oil.value.should be_within(283041.5083202817).of(5660830.166405634)
      end

      it "total cost of industry_chemicals_refineries_burner_network_gas should be within 5.0% of 4169974.9324314347" do
        @scenario.total_cost_of_industry_chemicals_other_burner_network_gas.value.should be_within(208498.74662157174).of(4169974.9324314347)
      end

      it "total cost of industry_chemicals_refineries_burner_wood_pellets should be within 5.0% of 10014215.81" do
        @scenario.total_cost_of_industry_chemicals_other_burner_wood_pellets.value.should be_within(500710.79050000006).of(10014215.81)
      end

      it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 3063217.291906533" do
        @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(153160.86459532665).of(3063217.291906533)
      end

      it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 4169974.9324314347" do
        @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(208498.74662157174).of(4169974.9324314347)
      end

      it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 4169974.9324314347" do
        @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(208498.74662157174).of(4169974.9324314347)
      end

      it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 3400163.000741542" do
        @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(170008.1500370771).of(3400163.000741542)
      end

      it "total cost of households_cooling_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
        @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
      end

      it "total cost of households_cooling_airconditioning_electricity should be within 5.0% of 181.0" do
        @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(9.05).of(181.0)
      end

      it "total cost of households_cooling_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
        @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
      end

      it "total cost of households_flexibility_p2h_electricity should be within 5.0% of 21.58867" do
        @scenario.total_cost_of_households_flexibility_p2h_electricity.value.should be_within(1.0794335000000002).of(21.58867)
      end

      it "total cost of households_water_heater_network_gas should be within 5.0% of 122.13104644881383" do
        @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(6.106552322440692).of(122.13104644881383)
      end

      it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
        @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
      end

      it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
        @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
      end

      it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 265.35948272670953" do
        @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(13.267974136335477).of(265.35948272670953)
      end

      it "total cost of households_water_heater_resistive_electricity should be within 5.0% of 14.7" do
        @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.735).of(14.7)
      end

      it "total cost of households_water_heater_solar_thermal should be within 5.0% of 95.55" do
        @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(4.7775).of(95.55)
      end

      it "total cost of households_water_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
        @scenario.total_cost_of_households_water_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
      end

      it "total cost of households_space_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
        @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
      end

      it "total cost of households_space_heater_wood_pellets should be within 5.0% of 818.1568208193078" do
        @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(40.907841040965394).of(818.1568208193078)
      end

      it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
        @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
      end

      it "total cost of households_space_heater_network_gas should be within 5.0% of 397.6476060318716" do
        @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(19.88238030159358).of(397.6476060318716)
      end

      it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
        @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
      end

      it "total cost of households_space_heater_coal should be within 5.0% of 297.91174735657466" do
        @scenario.total_cost_of_households_space_heater_coal.value.should be_within(14.895587367828734).of(297.91174735657466)
      end

      it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 377.9388486337057" do
        @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(18.896942431685286).of(377.9388486337057)
      end

      it "total cost of households_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
        @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
      end

      it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
        @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
      end

      it "total cost of households_space_heater_crude_oil should be within 5.0% of 495.28551950744856" do
        @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(24.764275975372428).of(495.28551950744856)
      end

      it "total cost of households_heat_network_connection_steam_hot_water should be within 5.0% of 633.3333333" do
        @scenario.total_cost_of_households_heat_network_connection_steam_hot_water.value.should be_within(31.666666665000005).of(633.3333333)
      end

      it "total cost of other_burner_coal should be within 5.0% of 3764495.877318696" do
        @scenario.total_cost_of_other_burner_coal.value.should be_within(188224.79386593483).of(3764495.877318696)
      end

      it "total cost of other_burner_wood_pellets should be within 5.0% of 520207.9434" do
        @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26010.39717).of(520207.9434)
      end

      it "total cost of other_burner_crude_oil should be within 5.0% of 292951.01382177614" do
        @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(14647.550691088807).of(292951.01382177614)
      end

      it "total cost of other_burner_network_gas should be within 5.0% of 206689.23648713387" do
        @scenario.total_cost_of_other_burner_network_gas.value.should be_within(10334.461824356695).of(206689.23648713387)
      end

      it "total cost of agriculture_burner_network_gas should be within 5.0% of 206689.23648713387" do
        @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(10334.461824356695).of(206689.23648713387)
      end

      it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
        @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
      end

      it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
        @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
      end

      it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 520207.9434" do
        @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26010.39717).of(520207.9434)
      end

      it "total cost of agriculture_burner_crude_oil should be within 5.0% of 292951.01382177614" do
        @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(14647.550691088807).of(292951.01382177614)
      end

      it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 3911538.6291195382" do
        @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(195576.9314559769).of(3911538.6291195382)
      end

      it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 4898618.161065258" do
        @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(244930.90805326292).of(4898618.161065258)
      end

      it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
      end

      it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 4169974.9324314347" do
        @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(208498.74662157174).of(4169974.9324314347)
      end

      it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 9902298.004" do
        @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(495114.90020000003).of(9902298.004)
      end

      it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
      end

      it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
        @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
      end

      it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 6403456.997384272" do
        @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(320172.8498692136).of(6403456.997384272)
      end

      it "total cost of energy_power_lv_network_electricity should be within 5.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(99.9639701).of(1999.279402)
      end

      it "total cost of energy_power_transformer_lv_mv_electricity should be within 5.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(99.9639701).of(1999.279402)
      end

      it "total cost of energy_power_mv_distribution_network_electricity should be within 5.0% of 7789.192549" do
        @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(389.45962745).of(7789.192549)
      end

      it "total cost of energy_power_mv_transport_network_electricity should be within 5.0% of 86884.46792" do
        @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(4344.223396).of(86884.46792)
      end

      it "total cost of energy_power_transformer_mv_hv_electricity should be within 5.0% of 321203.8165" do
        @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(16060.190825000001).of(321203.8165)
      end

      it "total cost of energy_power_hv_network_electricity should be within 5.0% of 47926596.97" do
        @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(2396329.8485).of(47926596.97)
      end
  end
end
