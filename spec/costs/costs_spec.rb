#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2723593.923" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(136179.69615).of(2723593.923)
    end

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 567345.3972" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(28367.26986).of(567345.3972)
    end

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 1691150.702" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(84557.53510000001).of(1691150.702)
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

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2723593.923" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(136179.69615).of(2723593.923)
    end

    it "total cost of households_collective_chp_biogas should be within 5.0% of 1691150.702" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(84557.53510000001).of(1691150.702)
    end

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 567345.3972" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(28367.26986).of(567345.3972)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 193.448" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(9.672400000000001).of(193.448)
    end

    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 522910.8575" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(26145.542875).of(522910.8575)
    end

    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2615893.923" do
      @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(130794.69615).of(2615893.923)
    end

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 1691150.702" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(84557.53510000001).of(1691150.702)
    end

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 8542711.895" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(427135.59475).of(8542711.895)
    end

    it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
      @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 238299117.5" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(11914955.875).of(238299117.5)
    end

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 389752235.3" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(19487611.765).of(389752235.3)
    end

    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27436675.0" do
      @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1371833.75).of(27436675.0)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 123660643.0" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(6183032.15).of(123660643.0)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 2549275.0" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(127463.75).of(2549275.0)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15172516.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(758625.8335000001).of(15172516.67)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 39843578.45" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(1992178.9225000003).of(39843578.45)
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

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 279660189.0" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(13983009.450000001).of(279660189.0)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 201505203.6" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(10075260.18).of(201505203.6)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 217173596.7" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(10858679.835).of(217173596.7)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 112030560.9" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(5601528.045000001).of(112030560.9)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 76322643.13" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3816132.1565).of(76322643.13)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 209387069.4" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(10469353.47).of(209387069.4)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 234729173.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(11736458.690000001).of(234729173.8)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 215474700.6" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(10773735.030000001).of(215474700.6)
    end

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 316926234.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15846311.700000001).of(316926234.0)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 182641746.3" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(9132087.315000001).of(182641746.3)
    end

    it "total cost of energy_power_engine_network_gas should be within 5.0% of 26338032.82" do
      @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(1316901.641).of(26338032.82)
    end

    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 369101405.7" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(18455070.285).of(369101405.7)
    end

    it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 268611161.6" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(13430558.080000002).of(268611161.6)
    end

    it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
      @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 1106589.202" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(55329.460100000004).of(1106589.202)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 20655369.52" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1032768.476).of(20655369.52)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 44184731.05" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2209236.5524999998).of(44184731.05)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 429600.4839" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(21480.024195).of(429600.4839)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 5761794.489" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(288089.72445000004).of(5761794.489)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 190766827.8" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(9538341.39).of(190766827.8)
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

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 585205.7377" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(29260.286885000005).of(585205.7377)
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

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 1971.080849" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(98.55404245).of(1971.080849)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 788303.7668" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(39415.18834).of(788303.7668)
    end

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 7199.873623" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(359.99368115000004).of(7199.873623)
    end

    it "total cost of buildings_cooling_airconditioning_electricity should be within 5.0% of 199.0" do
      @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(9.950000000000001).of(199.0)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 4460530.69" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(223026.53450000004).of(4460530.69)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 5831983.255" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(291599.16275).of(5831983.255)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 8802896.537" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(440144.82685000007).of(8802896.537)
    end

    it "total cost of industry_chemicals_burner_wood_pellets should be within 5.0% of 10014215.81" do
      @scenario.total_cost_of_industry_chemicals_burner_wood_pellets.value.should be_within(500710.79050000006).of(10014215.81)
    end

    it "total cost of industry_chemicals_burner_network_gas should be within 5.0% of 5831983.255" do
      @scenario.total_cost_of_industry_chemicals_burner_network_gas.value.should be_within(291599.16275).of(5831983.255)
    end

    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 4121561.669" do
      @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(206078.08345000003).of(4121561.669)
    end

    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 5831983.255" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(291599.16275).of(5831983.255)
    end

    it "total cost of industry_chemicals_burner_coal should be within 5.0% of 4460530.69" do
      @scenario.total_cost_of_industry_chemicals_burner_coal.value.should be_within(223026.53450000004).of(4460530.69)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10014215.81" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(500710.79050000006).of(10014215.81)
    end

    it "total cost of industry_chemicals_burner_crude_oil should be within 5.0% of 8802896.537" do
      @scenario.total_cost_of_industry_chemicals_burner_crude_oil.value.should be_within(440144.82685000007).of(8802896.537)
    end

    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 5831983.255" do
      @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(291599.16275).of(5831983.255)
    end

    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 3923656.88" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(196182.844).of(3923656.88)
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

    it "total cost of households_water_heater_network_gas should be within 5.0% of 155.9649996" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(7.7982499800000005).of(155.9649996)
    end

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 290.5469812" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(14.52734906).of(290.5469812)
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

    it "total cost of households_space_heater_network_gas should be within 5.0% of 444.9804097" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(22.249020485000003).of(444.9804097)
    end

    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_space_heater_coal should be within 5.0% of 315.445981" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(15.77229905).of(315.445981)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 413.4273613" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(20.671368065).of(413.4273613)
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

    it "total cost of other_burner_coal should be within 5.0% of 4460530.69" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(223026.53450000004).of(4460530.69)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 520207.9434" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26010.39717).of(520207.9434)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 456636.516" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(22831.825800000002).of(456636.516)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 288730.0421" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(14436.502105000001).of(288730.0421)
    end

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 288730.0421" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(14436.502105000001).of(288730.0421)
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

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 4684910.643" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(234245.53215).of(4684910.643)
    end

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 6919979.635" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(345998.98175000004).of(6919979.635)
    end

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 5831983.255" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(291599.16275).of(5831983.255)
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

    it "total cost of energy_heater_for_heat_network_crude_oil should be within 5.0% of 10025561.29" do
      @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(501278.0645).of(10025561.29)
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
