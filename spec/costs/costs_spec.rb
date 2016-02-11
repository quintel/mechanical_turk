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

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 623983.7141302777" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(31199.18570651389).of(623983.7141302777)
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

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 623983.7141302779" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(31199.185706513894).of(623983.7141302779)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 152.4992" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(7.624960000000001).of(152.4992)
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

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 265043977.53038034" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(13252198.876519017).of(265043977.53038034)
    end

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 370231864.27765286" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(18511593.213882644).of(370231864.27765286)
    end

    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27436675.0" do
      @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1371833.75).of(27436675.0)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 123660643.0" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(6183032.15).of(123660643.0)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 1605000.0" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(80250.0).of(1605000.0)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15172516.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(758625.8335000001).of(15172516.67)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 42357620.67514792" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(2117881.033757396).of(42357620.67514792)
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

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 321279617.8685882" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(16063980.893429412).of(321279617.8685882)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 175691142.77333334" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(8784557.138666667).of(175691142.77333334)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(962250.0).of(19245000.0)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 217173596.7" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(10858679.835).of(217173596.7)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 119384341.76218653" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(5969217.088109327).of(119384341.76218653)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 76322643.13" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3816132.1565).of(76322643.13)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 221069555.79715443" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(11053477.789857723).of(221069555.79715443)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 234729173.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(11736458.690000001).of(234729173.8)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 179173990.01248094" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(8958699.500624048).of(179173990.01248094)
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

    it "total cost of energy_power_engine_diesel should be within 5.0% of 1258416.896963095" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(62920.84484815475).of(1258416.896963095)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 14483826.373725586" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(724191.3186862794).of(14483826.373725586)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 22738194.446837313" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(1136909.7223418658).of(22738194.446837313)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 148766.61046308442" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(7438.330523154222).of(148766.61046308442)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 4599058.2429909585" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(229952.91214954795).of(4599058.2429909585)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 210870517.1949185" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(10543525.859745927).of(210870517.1949185)
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

    it "total cost of households_flexibility_p2h_electricity should be within 5.0% of 21.588666666666665" do
      @scenario.total_cost_of_households_flexibility_p2h_electricity.value.should be_within(1.0794333333333332).of(21.588666666666665)
    end

    it "total cost of households_water_heater_network_gas should be within 5.0% of 147.02236226063758" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(7.3511181130318795).of(147.02236226063758)
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

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 818.1568208193078" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(40.907841040965394).of(818.1568208193078)
    end

    it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
      @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
    end

    it "total cost of households_space_heater_network_gas should be within 5.0% of 496.83760777530875" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(24.84188038876544).of(496.83760777530875)
    end

    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_space_heater_coal should be within 5.0% of 332.89198546972943" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(16.644599273486474).of(332.89198546972943)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 452.3081095472481" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(22.615405477362405).of(452.3081095472481)
    end

    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 657.2461707984517" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(32.86230853992259).of(657.2461707984517)
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
