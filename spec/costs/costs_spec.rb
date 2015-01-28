#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 621647870.6" do
      @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(31082393.53).of(621647870.6)
    end

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 389752235.3" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(19487611.765).of(389752235.3)
    end

    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 368547595.1" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(18427379.755000003).of(368547595.1)
    end

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 316870089.8" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15843504.490000002).of(316870089.8)
    end

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 279344727.3" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(13967236.365000002).of(279344727.3)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 259568921.5" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(12978446.075000001).of(259568921.5)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 229907924.5" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(11495396.225000001).of(229907924.5)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 210950733.7" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(10547536.685).of(210950733.7)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 210239626.7" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(10511981.335).of(210239626.7)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 207476516.5" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(10373825.825000001).of(207476516.5)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 201099715.4" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(10054985.770000001).of(201099715.4)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 198094267.2" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(9904713.36).of(198094267.2)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 185243174.6" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(9262158.73).of(185243174.6)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 182275127.1" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9113756.355).of(182275127.1)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 123677713.2" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(6183885.66).of(123677713.2)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 112018788.5" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(5600939.425000001).of(112018788.5)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 76311543.43" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3815577.1715000006).of(76311543.43)
    end

    it "total cost of energy_power_hydro_mountain should be within 5.0% of 56752467.81" do
      @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(2837623.3905).of(56752467.81)
    end

    it "total cost of energy_power_hv_network_electricity should be within 5.0% of 47926596.97" do
      @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(2396329.8485).of(47926596.97)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 42871166.0" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2143558.3000000003).of(42871166.0)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 39837091.62" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(1991854.581).of(39837091.62)
    end

    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27436675.0" do
      @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1371833.75).of(27436675.0)
    end

    it "total cost of energy_power_engine_network_gas should be within 5.0% of 26338028.61" do
      @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(1316901.4305).of(26338028.61)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 20205964.8" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1010298.2400000001).of(20205964.8)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15172516.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(758625.8335000001).of(15172516.67)
    end

    it "total cost of industry_chemicals_burner_wood_pellets should be within 5.0% of 10185359.42" do
      @scenario.total_cost_of_industry_chemicals_burner_wood_pellets.value.should be_within(509267.971).of(10185359.42)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10185359.42" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(509267.971).of(10185359.42)
    end

    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 10070912.4" do
      @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(503545.62000000005).of(10070912.4)
    end

    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 8690190.981" do
      @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(434509.54905000003).of(8690190.981)
    end

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 8542266.72" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(427113.33600000007).of(8542266.72)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 7644503.019" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(382225.15095000004).of(7644503.019)
    end

    it "total cost of industry_chemicals_burner_crude_oil should be within 5.0% of 7644503.019" do
      @scenario.total_cost_of_industry_chemicals_burner_crude_oil.value.should be_within(382225.15095000004).of(7644503.019)
    end

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 6918486.493" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(345924.32465).of(6918486.493)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 5830755.561" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(291537.77805).of(5830755.561)
    end

    it "total cost of industry_chemicals_burner_network_gas should be within 5.0% of 5830755.561" do
      @scenario.total_cost_of_industry_chemicals_burner_network_gas.value.should be_within(291537.77805).of(5830755.561)
    end

    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 5830755.561" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(291537.77805).of(5830755.561)
    end

    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 5830755.561" do
      @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(291537.77805).of(5830755.561)
    end

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 5830755.561" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(291537.77805).of(5830755.561)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 5475880.081" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(273794.00405000005).of(5475880.081)
    end

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 4470229.768" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(223511.48840000003).of(4470229.768)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 4267317.902" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(213365.8951).of(4267317.902)
    end

    it "total cost of industry_chemicals_burner_coal should be within 5.0% of 4267317.902" do
      @scenario.total_cost_of_industry_chemicals_burner_coal.value.should be_within(213365.8951).of(4267317.902)
    end

    it "total cost of other_burner_coal should be within 5.0% of 4267317.902" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(213365.8951).of(4267317.902)
    end

    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 4011455.085" do
      @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(200572.75425).of(4011455.085)
    end

    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 3918770.615" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(195938.53075000003).of(3918770.615)
    end

    it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
      @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
    end

    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2620827.119" do
      @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(131041.35595).of(2620827.119)
    end

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2597727.119" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(129886.35595).of(2597727.119)
    end

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2597727.119" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(129886.35595).of(2597727.119)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 2549275.0" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(127463.75).of(2549275.0)
    end

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 1796777.325" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(89838.86625).of(1796777.325)
    end

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 1736777.325" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(86838.86625).of(1736777.325)
    end

    it "total cost of households_collective_chp_biogas should be within 5.0% of 1736777.325" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(86838.86625).of(1736777.325)
    end

    it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
      @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
    end

    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 5.0% of 1314033.788" do
      @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(65701.6894).of(1314033.788)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 999790.0074" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(49989.50037).of(999790.0074)
    end

    it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 788417.7242" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(39420.886210000004).of(788417.7242)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 585258.7685" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(29262.938425).of(585258.7685)
    end

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 560545.4991" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(28027.274955).of(560545.4991)
    end

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 560545.4991" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(28027.274955).of(560545.4991)
    end

    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 540090.9492" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(27004.54746).of(540090.9492)
    end

    it "total cost of energy_power_wind_turbine_inland should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end

    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 420802.4294" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(21040.121470000002).of(420802.4294)
    end

    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
      @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 395980.8028" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(19799.04014).of(395980.8028)
    end

    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 395980.8028" do
      @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(19799.04014).of(395980.8028)
    end

    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
      @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
    end

    it "total cost of energy_power_transformer_mv_hv_electricity should be within 5.0% of 321203.8165" do
      @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(16060.190825000001).of(321203.8165)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 288860.9003" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(14443.045015).of(288860.9003)
    end

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 288860.9003" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(14443.045015).of(288860.9003)
    end

    it "total cost of buildings_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end

    it "total cost of energy_power_mv_transport_network_electricity should be within 5.0% of 86884.46792" do
      @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(4344.223396).of(86884.46792)
    end

    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end

    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.5" do
      @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.375).of(13387.5)
    end

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9764.248915" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(488.21244575000003).of(9764.248915)
    end

    it "total cost of energy_power_mv_distribution_network_electricity should be within 5.0% of 7789.192549" do
      @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(389.45962745).of(7789.192549)
    end

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 6483.831053" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(324.19155265).of(6483.831053)
    end

    it "total cost of buildings_space_heater_coal should be within 5.0% of 4461.373398" do
      @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(223.0686699).of(4461.373398)
    end

    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
      @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
    end

    it "total cost of energy_power_lv_network_electricity should be within 5.0% of 1999.279402" do
      @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(99.9639701).of(1999.279402)
    end

    it "total cost of energy_power_transformer_lv_mv_electricity should be within 5.0% of 1999.279402" do
      @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(99.9639701).of(1999.279402)
    end

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 1971.947738" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(98.5973869).of(1971.947738)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 1716.42" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(85.82100000000001).of(1716.42)
    end

    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_cooling_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 758.0819129" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(37.904095645000005).of(758.0819129)
    end

    it "total cost of households_heat_network_connection_steam_hot_water should be within 5.0% of 633.3333333" do
      @scenario.total_cost_of_households_heat_network_connection_steam_hot_water.value.should be_within(31.666666665000005).of(633.3333333)
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

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 536.9206639" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(26.846033195000004).of(536.9206639)
    end

    it "total cost of households_space_heater_network_gas should be within 5.0% of 445.1105229" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(22.255526145).of(445.1105229)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 413.5249156" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(20.676245780000002).of(413.5249156)
    end

    it "total cost of households_space_heater_coal should be within 5.0% of 307.2285164" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(15.361425820000001).of(307.2285164)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 290.5798875" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(14.528994375).of(290.5798875)
    end

    it "total cost of households_space_heater_heatpump_add_on_electricity should be within 5.0% of 281.6666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_add_on_electricity.value.should be_within(14.083333335).of(281.6666667)
    end

    it "total cost of buildings_cooling_airconditioning_electricity should be within 5.0% of 199.0" do
      @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(9.950000000000001).of(199.0)
    end

    it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.75" do
      @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.787500000000001).of(195.75)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 193.448" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(9.672400000000001).of(193.448)
    end

    it "total cost of households_cooling_airconditioning_electricity should be within 5.0% of 181.0" do
      @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(9.05).of(181.0)
    end

    it "total cost of households_water_heater_network_gas should be within 5.0% of 156.0092021" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(7.800460105000001).of(156.0092021)
    end

    it "total cost of households_water_heater_solar_thermal should be within 5.0% of 95.55" do
      @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(4.7775).of(95.55)
    end

    it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
      @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
    end

    it "total cost of households_water_heater_resistive_electricity should be within 5.0% of 14.7" do
      @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.735).of(14.7)
    end
  end
end
