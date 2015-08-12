#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2569593.923" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(128479.69615).of(2569593.923)
    end

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 560427.7911" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(28021.389555).of(560427.7911)
    end

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 1673650.702" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(83682.53510000001).of(1673650.702)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 1716.42" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(85.82100000000001).of(1716.42)
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

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2569593.923" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(128479.69615).of(2569593.923)
    end

    it "total cost of households_collective_chp_biogas should be within 5.0% of 1673650.702" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(83682.53510000001).of(1673650.702)
    end

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 560427.7911" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(28021.389555).of(560427.7911)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 193.448" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(9.672400000000001).of(193.448)
    end

    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 539985.012" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(26999.2506).of(539985.012)
    end

    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2592693.923" do
      @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(129634.69615).of(2592693.923)
    end

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 1733650.702" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(86682.53510000001).of(1733650.702)
    end

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 8541708.473" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(427085.42365).of(8541708.473)
    end

    it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
      @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 238164513.4" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(11908225.670000002).of(238164513.4)
    end

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 389752235.3" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(19487611.765).of(389752235.3)
    end

    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27436675.0" do
      @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1371833.75).of(27436675.0)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 123664833.6" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(6183241.68).of(123664833.6)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 2549275.0" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(127463.75).of(2549275.0)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15172516.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(758625.8335000001).of(15172516.67)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 39828957.16" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(1991447.858).of(39828957.16)
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

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 279556398.6" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(13977819.930000002).of(279556398.6)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 201099715.4" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(10054985.770000001).of(201099715.4)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 216809177.2" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(10840458.86).of(216809177.2)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 112004026.0" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(5600201.300000001).of(112004026.0)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 76297624.47" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3814881.2235000003).of(76297624.47)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 208962682.1" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(10448134.105).of(208962682.1)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 234701099.4" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(11735054.97).of(234701099.4)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 215277964.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(10763898.240000002).of(215277964.8)
    end

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 316870089.8" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15843504.490000002).of(316870089.8)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 182275127.1" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9113756.355).of(182275127.1)
    end

    it "total cost of energy_power_engine_network_gas should be within 5.0% of 26338023.34" do
      @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(1316901.1670000001).of(26338023.34)
    end

    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 368919195.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(18445959.794999998).of(368919195.9)
    end

    it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 268558508.1" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(13427925.405000001).of(268558508.1)
    end

    it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
      @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 1184627.893" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(59231.39465).of(1184627.893)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 20646248.7" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1032312.435).of(20646248.7)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 43756392.89" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2187819.6445).of(43756392.89)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 429654.6983" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(21482.734915).of(429654.6983)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 5751049.73" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(287552.48650000006).of(5751049.73)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 190559247.1" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(9527962.355).of(190559247.1)
    end

    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 5.0% of 1314033.788" do
      @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(65701.6894).of(1314033.788)
    end

    it "total cost of buildings_space_heater_coal should be within 5.0% of 4579.095755" do
      @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(228.95478775000004).of(4579.095755)
    end

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9658.109823" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(482.90549115000005).of(9658.109823)
    end

    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 585227.5737" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(29261.378685).of(585227.5737)
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

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 1971.437799" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(98.57188995000001).of(1971.437799)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 788350.6898" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(39417.534490000005).of(788350.6898)
    end

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 7199.873623" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(359.99368115000004).of(7199.873623)
    end

    it "total cost of buildings_cooling_airconditioning_electricity should be within 5.0% of 199.0" do
      @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(9.950000000000001).of(199.0)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 4453269.688" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(222663.48440000002).of(4453269.688)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 5829216.04" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(291460.802).of(5829216.04)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 8797195.122" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(439859.7561).of(8797195.122)
    end

    it "total cost of industry_chemicals_burner_wood_pellets should be within 5.0% of 10014215.81" do
      @scenario.total_cost_of_industry_chemicals_burner_wood_pellets.value.should be_within(500710.79050000006).of(10014215.81)
    end

    it "total cost of industry_chemicals_burner_network_gas should be within 5.0% of 5829216.04" do
      @scenario.total_cost_of_industry_chemicals_burner_network_gas.value.should be_within(291460.802).of(5829216.04)
    end

    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 4116764.76" do
      @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(205838.238).of(4116764.76)
    end

    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 5829216.04" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(291460.802).of(5829216.04)
    end

    it "total cost of industry_chemicals_burner_coal should be within 5.0% of 4453269.688" do
      @scenario.total_cost_of_industry_chemicals_burner_coal.value.should be_within(222663.48440000002).of(4453269.688)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10014215.81" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(500710.79050000006).of(10014215.81)
    end

    it "total cost of industry_chemicals_burner_crude_oil should be within 5.0% of 8797195.122" do
      @scenario.total_cost_of_industry_chemicals_burner_crude_oil.value.should be_within(439859.7561).of(8797195.122)
    end

    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 5829216.04" do
      @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(291460.802).of(5829216.04)
    end

    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 3918308.759" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(195915.43795000002).of(3918308.759)
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

    it "total cost of households_flexibility_p2h_electricity should be within 5.0% of 14.7" do
      @scenario.total_cost_of_households_flexibility_p2h_electricity.value.should be_within(0.735).of(14.7)
    end

    it "total cost of households_water_heater_network_gas should be within 5.0% of 155.9832005" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(7.799160025000001).of(155.9832005)
    end

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 290.5605307" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(14.528026535000002).of(290.5605307)
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

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 750.7033071" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(37.535165355).of(750.7033071)
    end

    it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
      @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
    end

    it "total cost of households_space_heater_heatpump_add_on_electricity should be within 5.0% of 281.6666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_add_on_electricity.value.should be_within(14.083333335).of(281.6666667)
    end

    it "total cost of households_space_heater_network_gas should be within 5.0% of 445.0339851" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(22.251699255000002).of(445.0339851)
    end

    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_space_heater_coal should be within 5.0% of 315.445981" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(15.77229905).of(315.445981)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 413.4675302" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(20.67337651).of(413.4675302)
    end

    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 586.6611441" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(29.333057205000003).of(586.6611441)
    end

    it "total cost of households_heat_network_connection_steam_hot_water should be within 5.0% of 633.3333333" do
      @scenario.total_cost_of_households_heat_network_connection_steam_hot_water.value.should be_within(31.666666665000005).of(633.3333333)
    end

    it "total cost of other_burner_coal should be within 5.0% of 4453269.688" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(222663.48440000002).of(4453269.688)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 520207.9434" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26010.39717).of(520207.9434)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 456636.516" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(22831.825800000002).of(456636.516)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 288783.9242" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(14439.196210000002).of(288783.9242)
    end

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 288783.9242" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(14439.196210000002).of(288783.9242)
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

    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 456636.516" do
      @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(22831.825800000002).of(456636.516)
    end

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 4676842.864" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(233842.14320000002).of(4676842.864)
    end

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 6916614.102" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(345830.7051).of(6916614.102)
    end

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 5829216.04" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(291460.802).of(5829216.04)
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

    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 10018988.82" do
      @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(500949.44100000005).of(10018988.82)
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
