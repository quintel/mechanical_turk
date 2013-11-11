#
require 'spec_helper'

describe "Testing costs" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  #Checking for change
  context "Testing all converters with total cost" do

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 242820426.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(12141021.340000002).of(242820426.8)
    end

    it "total cost of households_water_heater_resistive_electricity should be within 5.0% of 14.7" do
      @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.735).of(14.7)
    end

    it "total cost of households_space_heater_electricity should be within 5.0% of 26.0" do
      @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(1.3).of(26.0)
    end

    it "total cost of households_water_heater_solar_thermal should be within 5.0% of 95.55" do
      @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(4.7775).of(95.55)
    end

    it "total cost of households_cooling_airconditioning_electricity should be within 5.0% of 181.0" do
      @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(9.05).of(181.0)
    end

    it "total cost of buildings_space_heater_electricity should be within 5.0% of 195.75" do
      @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(9.787500000000001).of(195.75)
    end

    it "total cost of households_water_heater_network_gas should be within 5.0% of 175.17" do
      @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(8.76).of(175.17)
    end

    it "total cost of buildings_cooling_airconditioning_electricity should be within 5.0% of 199.0" do
      @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(9.950000000000001).of(199.0)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 222.9245208" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(11.146226040000002).of(222.9245208)
    end

    it "total cost of households_water_heater_coal should be within 5.0% of 231.0" do
      @scenario.total_cost_of_households_water_heater_coal.value.should be_within(11.55).of(231.0)
    end

    it "total cost of households_water_heater_crude_oil should be within 5.0% of 245.0" do
      @scenario.total_cost_of_households_water_heater_crude_oil.value.should be_within(12.25).of(245.0)
    end

    it "total cost of households_space_heater_heatpump_add_on_electricity should be within 5.0% of 281.6666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_add_on_electricity.value.should be_within(14.083333335).of(281.6666667)
    end

    it "total cost of households_water_heater_combined_network_gas should be within 5.0% of 304.84" do
      @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(15.24).of(304.84)
    end

    it "total cost of households_space_heater_coal should be within 5.0% of 327.4528956" do
      @scenario.total_cost_of_households_space_heater_coal.value.should be_within(16.372644779999998).of(327.4528956)
    end

    it "total cost of households_space_heater_combined_network_gas should be within 5.0% of 440.9899648" do
      @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(22.049498240000002).of(440.9899648)
    end

    it "total cost of households_water_heater_wood_pellets should be within 5.0% of 476.6108108" do
      @scenario.total_cost_of_households_water_heater_wood_pellets.value.should be_within(23.83054054).of(476.6108108)
    end

    it "total cost of households_space_heater_network_gas should be within 5.0% of 481.7420322" do
      @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(24.08710161).of(481.7420322)
    end

    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of households_water_heater_district_heating_steam_hot_water should be within 5.0% of 594.3333333" do
      @scenario.total_cost_of_households_water_heater_district_heating_steam_hot_water.value.should be_within(29.716666665000005).of(594.3333333)
    end

    it "total cost of households_heat_network_connection_steam_hot_water should be within 5.0% of 633.3333333" do
      @scenario.total_cost_of_households_heat_network_connection_steam_hot_water.value.should be_within(31.666666665000005).of(633.3333333)
    end

    it "total cost of households_space_heater_crude_oil should be within 5.0% of 708.3650073" do
      @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(35.418250365).of(708.3650073)
    end

    it "total cost of households_space_heater_wood_pellets should be within 5.0% of 721.016857" do
      @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(36.05084285).of(721.016857)
    end

    it "total cost of households_cooling_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 5.0% of 923.3333333" do
      @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(46.16666666500001).of(923.3333333)
    end

    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 5.0% of 1226.666667" do
      @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(61.333333350000004).of(1226.666667)
    end

    it "total cost of energy_power_lv_network_electricity should be within 5.0% of 1999.279402" do
      @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(99.9639701).of(1999.279402)
    end

    it "total cost of energy_power_transformer_lv_mv_electricity should be within 5.0% of 1999.279402" do
      @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(99.9639701).of(1999.279402)
    end

    it "total cost of buildings_space_heater_network_gas should be within 5.0% of 2452.356171" do
      @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(122.61780855).of(2452.356171)
    end

    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
      @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
    end

    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
      @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 2545.292412" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(127.2646206).of(2545.292412)
    end

    it "total cost of buildings_space_heater_coal should be within 5.0% of 4923.654301" do
      @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(246.18271504999998).of(4923.654301)
    end

    it "total cost of energy_power_mv_distribution_network_electricity should be within 5.0% of 7789.192549" do
      @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(389.45962745).of(7789.192549)
    end

    it "total cost of buildings_space_heater_wood_pellets should be within 5.0% of 9764.248915" do
      @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(488.21244575000003).of(9764.248915)
    end

    it "total cost of buildings_space_heater_crude_oil should be within 5.0% of 9784.837895" do
      @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(489.24189475000003).of(9784.837895)
    end

    it "total cost of buildings_space_heater_solar_thermal should be within 5.0% of 13387.5" do
      @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(669.375).of(13387.5)
    end

    it "total cost of energy_heater_for_heat_network_waste_mix should be within 5.0% of 40000.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(2000.0).of(40000.0)
    end

    it "total cost of energy_power_mv_transport_network_electricity should be within 5.0% of 86884.46792" do
      @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(4344.223396).of(86884.46792)
    end

    it "total cost of energy_heater_for_heat_network_lignite should be within 5.0% of 100225.0" do
      @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(5011.25).of(100225.0)
    end

    it "total cost of buildings_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of households_collective_geothermal should be within 5.0% of 287417.4843" do
      @scenario.total_cost_of_households_collective_geothermal.value.should be_within(14370.874215000002).of(287417.4843)
    end

    it "total cost of energy_power_transformer_mv_hv_electricity should be within 5.0% of 321203.8165" do
      @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(16060.190825000001).of(321203.8165)
    end

    it "total cost of agriculture_burner_network_gas should be within 5.0% of 361379.2982" do
      @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(18068.964910000002).of(361379.2982)
    end

    it "total cost of other_burner_network_gas should be within 5.0% of 361379.2982" do
      @scenario.total_cost_of_other_burner_network_gas.value.should be_within(18068.964910000002).of(361379.2982)
    end

    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 5.0% of 365365.4375" do
      @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(18268.271875000002).of(365365.4375)
    end

    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 5.0% of 404644.3224" do
      @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(20232.21612).of(404644.3224)
    end

    it "total cost of agriculture_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end

    it "total cost of other_burner_wood_pellets should be within 5.0% of 529205.7374" do
      @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(26460.28687).of(529205.7374)
    end

    it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of energy_power_wind_turbine_inland should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 535713.763" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(26785.68815).of(535713.763)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 535713.763" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(26785.68815).of(535713.763)
    end

    it "total cost of buildings_heat_network_connection_steam_hot_water should be within 5.0% of 587333.3333" do
      @scenario.total_cost_of_buildings_heat_network_connection_steam_hot_water.value.should be_within(29366.666665000004).of(587333.3333)
    end

    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 5.0% of 614647.1248" do
      @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(30732.35624).of(614647.1248)
    end

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of households_collective_chp_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of households_collective_chp_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of other_chp_engine_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_other_chp_engine_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of other_chp_engine_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_other_chp_engine_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of agriculture_burner_crude_oil should be within 5.0% of 675607.9264" do
      @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(33780.39632).of(675607.9264)
    end

    it "total cost of other_burner_crude_oil should be within 5.0% of 675607.9264" do
      @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(33780.39632).of(675607.9264)
    end

    it "total cost of agriculture_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_agriculture_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of energy_heater_for_heat_network_geothermal should be within 5.0% of 793333.3333" do
      @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(39666.666665000004).of(793333.3333)
    end

    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 5.0% of 851570.0875" do
      @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(42578.504375000004).of(851570.0875)
    end

    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 5.0% of 1314033.788" do
      @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(65701.6894).of(1314033.788)
    end

    it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
      @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
    end

    it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
      @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 4236515.76" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(211825.788).of(4236515.76)
    end

    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 5.0% of 4404521.372" do
      @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(220226.06860000003).of(4404521.372)
    end

    it "total cost of industry_burner_coal should be within 5.0% of 4896284.182" do
      @scenario.total_cost_of_industry_burner_coal.value.should be_within(244814.2091).of(4896284.182)
    end

    it "total cost of other_burner_coal should be within 5.0% of 4896284.182" do
      @scenario.total_cost_of_other_burner_coal.value.should be_within(244814.2091).of(4896284.182)
    end

    it "total cost of energy_heater_for_heat_network_coal should be within 5.0% of 5169081.19" do
      @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(258454.05950000003).of(5169081.19)
    end

    it "total cost of industry_other_metals_burner_network_gas should be within 5.0% of 6127282.207" do
      @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(306364.11035000003).of(6127282.207)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 7187319.305" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(359365.96525).of(7187319.305)
    end

    it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 7187319.305" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(359365.96525).of(7187319.305)
    end

    it "total cost of energy_heat_network_backup_heater_network_gas should be within 5.0% of 7227585.963" do
      @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(361379.29815000005).of(7227585.963)
    end

    it "total cost of industry_aluminium_burner_network_gas should be within 5.0% of 7227585.963" do
      @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(361379.29815000005).of(7227585.963)
    end

    it "total cost of industry_burner_network_gas should be within 5.0% of 7227585.963" do
      @scenario.total_cost_of_industry_burner_network_gas.value.should be_within(361379.29815000005).of(7227585.963)
    end

    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 5.0% of 7227585.963" do
      @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(361379.29815000005).of(7227585.963)
    end

    it "total cost of energy_heater_for_heat_network_network_gas should be within 5.0% of 8617334.28" do
      @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(430866.714).of(8617334.28)
    end

    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 5.0% of 10070912.4" do
      @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(503545.62000000005).of(10070912.4)
    end

    it "total cost of industry_burner_wood_pellets should be within 5.0% of 10185359.42" do
      @scenario.total_cost_of_industry_burner_wood_pellets.value.should be_within(509267.971).of(10185359.42)
    end

    it "total cost of industry_burner_crude_oil should be within 5.0% of 12878997.98" do
      @scenario.total_cost_of_industry_burner_crude_oil.value.should be_within(643949.8990000001).of(12878997.98)
    end

      it "total cost of industry_chp_ultra_supercritical_coal should be within 5.0% of 7187319.305" do
      @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(359365.96525).of(7187319.305)
    end

    it "total cost of energy_chp_ultra_supercritical_lignite should be within 5.0% of 199248241.1" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(8396861.935).of(199248241.199248241)
    end

    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 5.0% of 261418961.8" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(13070948.090000002).of(261418961.8)
    end

    it "total cost of energy_power_combined_cycle_ccs_coal should be within 5.0% of 255949052.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(12797452.64).of(255949052.8)
    end

    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 5.0% of 370498459.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(18524922.995).of(370498459.9)
    end

    it "total cost of energy_power_ultra_supercritical_lignite should be within 5.0% of 179931584.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(8996579.245000001).of(179931584.9)
    end

    it "total cost of energy_chp_ultra_supercritical_coal should be within 5.0% of 200444779.2" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(10022238.959999999).of(200444779.2)
    end

    it "total cost of energy_power_combined_cycle_coal should be within 5.0% of 234460355.2" do
      @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(11723017.76).of(234460355.2)
    end

    it "total cost of energy_power_supercritical_coal should be within 5.0% of 228617306.9" do
      @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(11430865.345).of(228617306.9)
    end

    it "total cost of energy_power_ultra_supercritical_coal should be within 5.0% of 244075160.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(12203758.0).of(244075160.0)
    end

    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 5.0% of 315047016.9" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(15752350.844999999).of(315047016.9)
    end

    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 5.0% of 289308590.8" do
      @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(13716426.29).of(289308590.8)
    end

    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 5.0% of 330064895.0" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(16503244.75).of(330064895.0)
    end

    it "total cost of buildings_collective_chp_network_gas should be within 5.0% of 660287.823" do
      @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(33014.39115).of(660287.823)
    end

    it "total cost of households_space_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_space_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_water_heater_micro_chp_network_gas should be within 5.0% of 933.3333333" do
      @scenario.total_cost_of_households_water_heater_micro_chp_network_gas.value.should be_within(46.66666666500001).of(933.3333333)
    end

    it "total cost of households_collective_chp_network_gas should be within 5.0% of 660287.823" do
      @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(33014.39115).of(660287.823)
    end

    it "total cost of households_water_heater_fuel_cell_chp_network_gas should be within 5.0% of 2453.333333" do
      @scenario.total_cost_of_households_water_heater_fuel_cell_chp_network_gas.value.should be_within(122.66666665000001).of(2453.333333)
    end

    it "total cost of agriculture_chp_engine_network_gas should be within 5.0% of 629969.0063" do
      @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(31498.450315000002).of(629969.0063)
    end

    it "total cost of energy_power_turbine_network_gas should be within 5.0% of 12585260.97" do
      @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(629263.0485).of(12585260.97)
    end

    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 5.0% of 53412909.32" do
      @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(2670645.466).of(53412909.32)
    end

    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 5.0% of 535713.763" do
      @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(26785.68815).of(535713.763)
    end

    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 5.0% of 25934561.08" do
      @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(1296728.054).of(25934561.08)
    end

    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 5.0% of 212131715.8" do
      @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(10606585.790000001).of(212131715.8)
    end

    it "total cost of energy_power_ultra_supercritical_network_gas should be within 5.0% of 67010489.81" do
      @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(3350524.4905000003).of(67010489.81)
    end

    it "total cost of energy_power_combined_cycle_network_gas should be within 5.0% of 212708657.1" do
      @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(10635432.855).of(212708657.1)
    end

    it "total cost of energy_chp_combined_cycle_network_gas should be within 5.0% of 45946646.95" do
      @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(2297332.3475).of(45946646.95)
    end

    it "total cost of other_chp_engine_network_gas should be within 5.0% of 752461.2579" do
      @scenario.total_cost_of_other_chp_engine_network_gas.value.should be_within(37623.062895).of(752461.2579)
    end

    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 5.0% of 366049307.4" do
      @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(18302465.37).of(366049307.4)
    end

    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 5.0% of 621955451.0" do
      @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(31097772.55).of(621955451.0)
    end

    it "total cost of energy_power_wind_turbine_offshore should be within 5.0% of 1643536.011" do
      @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(82176.80055).of(1643536.011)
    end

    it "total cost of energy_power_wind_turbine_inland should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of energy_power_wind_turbine_coastal should be within 5.0% of 531768.45" do
      @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(26588.4225).of(531768.45)
    end

    it "total cost of buildings_collective_chp_wood_pellets should be within 5.0% of 2597727.1" do
      @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(97584.84235).of(2597727.1)
    end

    it "total cost of households_collective_chp_wood_pellets should be within 5.0% of 2597727.1" do
      @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(97584.84235).of(2597727.1)
    end

    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 5.0% of 2595366.576" do
      @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(129768.3288).of(2595366.576)
    end

    it "total cost of buildings_chp_engine_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of buildings_solar_pv_solar_radiation should be within 5.0% of 2545.292412" do
      @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(127.2646206).of(2545.292412)
    end

    it "total cost of households_collective_chp_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

    it "total cost of households_solar_pv_solar_radiation should be within 5.0% of 222.9245208" do
      @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(11.146226040000002).of(222.9245208)
    end

    it "total cost of agriculture_chp_engine_biogas should be within 5.0% of 698724.9095" do
      @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(34936.245474999996).of(698724.9095)
    end

    it "total cost of energy_chp_supercritical_waste_mix should be within 5.0% of 19245000.0" do
      @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(801750.0).of(19245000.0)
    end

    it "total cost of energy_power_supercritical_waste_mix should be within 5.0% of 27436675.0" do
      @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(1371833.75).of(27436675.0)
    end

    it "total cost of energy_power_hydro_river should be within 5.0% of 3000000.0" do
      @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(150000.0).of(3000000.0)
    end

    it "total cost of energy_power_hydro_mountain should be within 5.0% of 56067143.15" do
      @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(2803357.1575).of(56067143.15)
    end

    it "total cost of energy_power_engine_diesel should be within 5.0% of 924828.6" do
      @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(46241).of(924828.6)
    end

    it "total cost of energy_power_geothermal should be within 5.0% of 15969915.26" do
      @scenario.total_cost_of_energy_power_geothermal.value.should be_within(798495.763).of(15969915.26)
    end

    it "total cost of energy_power_solar_pv_solar_radiation should be within 5.0% of 4236515.76" do
      @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(211825.788).of(4236515.76)
    end

    it "total cost of energy_power_solar_csp_solar_radiation should be within 5.0% of 15154166.67" do
      @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(757708.3335000001).of(15154166.67)
    end

    it "total cost of other_chp_engine_biogas should be within 5.0% of 638724.9095" do
      @scenario.total_cost_of_other_chp_engine_biogas.value.should be_within(31936.245475).of(638724.9095)
    end

  end
end
