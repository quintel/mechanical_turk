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
    it "total cost of transport_car_using_hydrogen should be within 1.0% of 0.0" do
        @scenario.total_cost_of_transport_car_using_hydrogen.value.should be_within(0.0).of(0.0)
    end
    it "total cost of transport_car_using_electricity should be within 1.0% of 0.0" do
        @scenario.total_cost_of_transport_car_using_electricity.value.should be_within(0.0).of(0.0)
    end
    it "total cost of households_water_heater_hybrid_heatpump_air_water_electricity should be within 1.0% of 10.82253307" do
        @scenario.total_cost_of_households_water_heater_hybrid_heatpump_air_water_electricity.value.should be_within(0.10822533070000001).of(10.82253307)
    end
    it "total cost of households_water_heater_resistive_electricity should be within 1.0% of 13.35" do
        @scenario.total_cost_of_households_water_heater_resistive_electricity.value.should be_within(0.1335).of(13.35)
    end
    it "total cost of households_flexibility_p2h_electricity should be within 1.0% of 19.09766667" do
        @scenario.total_cost_of_households_flexibility_p2h_electricity.value.should be_within(0.1909766667).of(19.09766667)
    end
    it "total cost of households_water_heater_heatpump_ground_water_electricity should be within 1.0% of 19.44027083" do
        @scenario.total_cost_of_households_water_heater_heatpump_ground_water_electricity.value.should be_within(0.1944027083).of(19.44027083)
    end
    it "total cost of households_water_heater_heatpump_air_water_electricity should be within 1.0% of 19.44027083" do
        @scenario.total_cost_of_households_water_heater_heatpump_air_water_electricity.value.should be_within(0.1944027083).of(19.44027083)
    end
    it "total cost of households_solar_pv_solar_radiation should be within 1.0% of 22.342432" do
        @scenario.total_cost_of_households_solar_pv_solar_radiation.value.should be_within(0.22342431999999998).of(22.342432)
    end
    it "total cost of households_space_heater_electricity should be within 1.0% of 23.0" do
        @scenario.total_cost_of_households_space_heater_electricity.value.should be_within(0.23).of(23.0)
    end
    it "total cost of buildings_solar_pv_solar_radiation should be within 1.0% of 25.92098448" do
        @scenario.total_cost_of_buildings_solar_pv_solar_radiation.value.should be_within(0.25920984480000003).of(25.92098448)
    end
    it "total cost of households_water_heater_combined_network_gas should be within 1.0% of 34.87260656" do
        @scenario.total_cost_of_households_water_heater_combined_network_gas.value.should be_within(0.3487260656).of(34.87260656)
    end
    it "total cost of households_water_heater_solar_thermal should be within 1.0% of 84.0" do
        @scenario.total_cost_of_households_water_heater_solar_thermal.value.should be_within(0.84).of(84.0)
    end
    it "total cost of households_water_heater_network_gas should be within 1.0% of 113.9504665" do
        @scenario.total_cost_of_households_water_heater_network_gas.value.should be_within(1.139504665).of(113.9504665)
    end
    it "total cost of households_cooling_airconditioning_electricity should be within 1.0% of 163.0" do
        @scenario.total_cost_of_households_cooling_airconditioning_electricity.value.should be_within(1.6300000000000001).of(163.0)
    end
    it "total cost of buildings_space_heater_electricity should be within 1.0% of 175.5" do
        @scenario.total_cost_of_buildings_space_heater_electricity.value.should be_within(1.7550000000000001).of(175.5)
    end
    it "total cost of buildings_cooling_airconditioning_electricity should be within 1.0% of 181.0" do
        @scenario.total_cost_of_buildings_cooling_airconditioning_electricity.value.should be_within(1.81).of(181.0)
    end
    it "total cost of households_space_heater_coal should be within 1.0% of 331.812452" do
        @scenario.total_cost_of_households_space_heater_coal.value.should be_within(3.31812452).of(331.812452)
    end
    it "total cost of households_space_heater_combined_network_gas should be within 1.0% of 384.9469422" do
        @scenario.total_cost_of_households_space_heater_combined_network_gas.value.should be_within(3.8494694220000003).of(384.9469422)
    end
    it "total cost of households_space_heater_district_heating_steam_hot_water should be within 1.0% of 385.0" do
        @scenario.total_cost_of_households_space_heater_district_heating_steam_hot_water.value.should be_within(3.85).of(385.0)
    end
    it "total cost of households_space_heater_network_gas should be within 1.0% of 414.0009008" do
        @scenario.total_cost_of_households_space_heater_network_gas.value.should be_within(4.140009008).of(414.0009008)
    end
    it "total cost of households_space_heater_crude_oil should be within 1.0% of 521.345401" do
        @scenario.total_cost_of_households_space_heater_crude_oil.value.should be_within(5.21345401).of(521.345401)
    end
    it "total cost of households_space_heater_hybrid_heatpump_air_water_electricity should be within 1.0% of 627.6461966" do
        @scenario.total_cost_of_households_space_heater_hybrid_heatpump_air_water_electricity.value.should be_within(6.276461966).of(627.6461966)
    end
    it "total cost of households_space_heater_hybrid_hydrogen_heatpump_air_water_electricity should be within 1.0% of 698.3333333" do
        @scenario.total_cost_of_households_space_heater_hybrid_hydrogen_heatpump_air_water_electricity.value.should be_within(6.983333333000001).of(698.3333333)
    end
    it "total cost of buildings_space_heater_district_heating_steam_hot_water should be within 1.0% of 739.0626667" do
        @scenario.total_cost_of_buildings_space_heater_district_heating_steam_hot_water.value.should be_within(7.390626667).of(739.0626667)
    end
    it "total cost of households_space_heater_wood_pellets should be within 1.0% of 758.0661285" do
        @scenario.total_cost_of_households_space_heater_wood_pellets.value.should be_within(7.580661285).of(758.0661285)
    end
    it "total cost of households_cooling_heatpump_air_water_electricity should be within 1.0% of 828.3333333" do
        @scenario.total_cost_of_households_cooling_heatpump_air_water_electricity.value.should be_within(8.283333333).of(828.3333333)
    end
    it "total cost of households_space_heater_heatpump_air_water_electricity should be within 1.0% of 923.8906667" do
        @scenario.total_cost_of_households_space_heater_heatpump_air_water_electricity.value.should be_within(9.238906667).of(923.8906667)
    end
    it "total cost of households_cooling_heatpump_ground_water_electricity should be within 1.0% of 1096.666667" do
        @scenario.total_cost_of_households_cooling_heatpump_ground_water_electricity.value.should be_within(10.96666667).of(1096.666667)
    end
    it "total cost of households_space_heater_heatpump_ground_water_electricity should be within 1.0% of 1192.224" do
        @scenario.total_cost_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(11.92224).of(1192.224)
    end
    it "total cost of buildings_space_heater_network_gas should be within 1.0% of 1786.750576" do
        @scenario.total_cost_of_buildings_space_heater_network_gas.value.should be_within(17.86750576).of(1786.750576)
    end
    it "total cost of energy_power_lv_network_electricity should be within 1.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_lv_network_electricity.value.should be_within(19.992794019999998).of(1999.279402)
    end
    it "total cost of energy_power_transformer_lv_mv_electricity should be within 1.0% of 1999.279402" do
        @scenario.total_cost_of_energy_power_transformer_lv_mv_electricity.value.should be_within(19.992794019999998).of(1999.279402)
    end
    it "total cost of buildings_space_heater_coal should be within 1.0% of 4780.84392" do
        @scenario.total_cost_of_buildings_space_heater_coal.value.should be_within(47.8084392).of(4780.84392)
    end
    it "total cost of buildings_space_heater_crude_oil should be within 1.0% of 6252.546813" do
        @scenario.total_cost_of_buildings_space_heater_crude_oil.value.should be_within(62.52546813).of(6252.546813)
    end
    it "total cost of energy_power_mv_distribution_network_electricity should be within 1.0% of 7789.192549" do
        @scenario.total_cost_of_energy_power_mv_distribution_network_electricity.value.should be_within(77.89192549).of(7789.192549)
    end
    it "total cost of buildings_space_heater_wood_pellets should be within 1.0% of 9703.992112" do
        @scenario.total_cost_of_buildings_space_heater_wood_pellets.value.should be_within(97.03992112).of(9703.992112)
    end
    it "total cost of buildings_space_heater_solar_thermal should be within 1.0% of 11943.75" do
        @scenario.total_cost_of_buildings_space_heater_solar_thermal.value.should be_within(119.4375).of(11943.75)
    end
    it "total cost of energy_heater_for_heat_network_waste_mix should be within 1.0% of 31000.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_waste_mix.value.should be_within(310.0).of(31000.0)
    end
    it "total cost of households_collective_heatpump_water_water_electricity should be within 1.0% of 48333.33333" do
        @scenario.total_cost_of_households_collective_heatpump_water_water_electricity.value.should be_within(483.33333330000005).of(48333.33333)
    end
    it "total cost of buildings_collective_heatpump_water_water_electricity should be within 1.0% of 48333.33333" do
        @scenario.total_cost_of_buildings_collective_heatpump_water_water_electricity.value.should be_within(483.33333330000005).of(48333.33333)
    end
    it "total cost of energy_power_mv_transport_network_electricity should be within 1.0% of 86884.46792" do
        @scenario.total_cost_of_energy_power_mv_transport_network_electricity.value.should be_within(868.8446792).of(86884.46792)
    end
    it "total cost of energy_heater_for_heat_network_lignite should be within 1.0% of 91225.0" do
        @scenario.total_cost_of_energy_heater_for_heat_network_lignite.value.should be_within(912.25).of(91225.0)
    end
    it "total cost of industry_chp_engine_gas_power_fuelmix should be within 1.0% of 124708.3266" do
        @scenario.total_cost_of_industry_chp_engine_gas_power_fuelmix.value.should be_within(1247.083266).of(124708.3266)
    end
    it "total cost of industry_chemicals_other_heatpump_water_water_electricity should be within 1.0% of 135833.3333" do
        @scenario.total_cost_of_industry_chemicals_other_heatpump_water_water_electricity.value.should be_within(1358.333333).of(135833.3333)
    end
    it "total cost of households_collective_geothermal should be within 1.0% of 250357.4843" do
        @scenario.total_cost_of_households_collective_geothermal.value.should be_within(2503.5748430000003).of(250357.4843)
    end
    it "total cost of buildings_collective_geothermal should be within 1.0% of 250357.4843" do
        @scenario.total_cost_of_buildings_collective_geothermal.value.should be_within(2503.5748430000003).of(250357.4843)
    end
    it "total cost of other_burner_network_gas should be within 1.0% of 254924.1327" do
        @scenario.total_cost_of_other_burner_network_gas.value.should be_within(2549.2413269999997).of(254924.1327)
    end
    it "total cost of agriculture_burner_network_gas should be within 1.0% of 254924.1327" do
        @scenario.total_cost_of_agriculture_burner_network_gas.value.should be_within(2549.2413269999997).of(254924.1327)
    end
    it "total cost of agriculture_heatpump_water_water_ts_electricity should be within 1.0% of 305215.7509" do
        @scenario.total_cost_of_agriculture_heatpump_water_water_ts_electricity.value.should be_within(3052.157509).of(305215.7509)
    end
    it "total cost of energy_power_transformer_mv_hv_electricity should be within 1.0% of 321203.8165" do
        @scenario.total_cost_of_energy_power_transformer_mv_hv_electricity.value.should be_within(3212.0381650000004).of(321203.8165)
    end
    it "total cost of buildings_space_heater_collective_heatpump_water_water_ts_electricity should be within 1.0% of 334554.875" do
        @scenario.total_cost_of_buildings_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(3345.54875).of(334554.875)
    end
    it "total cost of industry_chemicals_refineries_flexibility_p2h_hydrogen_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_chemicals_refineries_flexibility_p2h_hydrogen_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_paper_flexibility_p2h_network_gas_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_paper_flexibility_p2h_network_gas_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_chemicals_refineries_flexibility_p2h_network_gas_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_chemicals_refineries_flexibility_p2h_network_gas_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_paper_flexibility_p2h_hydrogen_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_paper_flexibility_p2h_hydrogen_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_chemicals_other_flexibility_p2h_hydrogen_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_chemicals_other_flexibility_p2h_hydrogen_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_paper_heater_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_paper_heater_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_chemicals_other_heater_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_chemicals_other_heater_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_food_flexibility_p2h_hydrogen_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_food_flexibility_p2h_hydrogen_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_food_flexibility_p2h_network_gas_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_food_flexibility_p2h_network_gas_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_chemicals_other_flexibility_p2h_network_gas_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_chemicals_other_flexibility_p2h_network_gas_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of industry_other_food_heater_electricity should be within 1.0% of 364750.0" do
        @scenario.total_cost_of_industry_other_food_heater_electricity.value.should be_within(3647.5).of(364750.0)
    end
    it "total cost of other_burner_crude_oil should be within 1.0% of 383026.1973" do
        @scenario.total_cost_of_other_burner_crude_oil.value.should be_within(3830.261973).of(383026.1973)
    end
    it "total cost of agriculture_burner_crude_oil should be within 1.0% of 383026.1973" do
        @scenario.total_cost_of_agriculture_burner_crude_oil.value.should be_within(3830.261973).of(383026.1973)
    end
    it "total cost of households_collective_burner_network_gas should be within 1.0% of 400087.3946" do
        @scenario.total_cost_of_households_collective_burner_network_gas.value.should be_within(4000.873946).of(400087.3946)
    end
    it "total cost of buildings_collective_burner_network_gas should be within 1.0% of 400087.3946" do
        @scenario.total_cost_of_buildings_collective_burner_network_gas.value.should be_within(4000.873946).of(400087.3946)
    end
    it "total cost of energy_power_wind_turbine_inland should be within 1.0% of 401478.42" do
        @scenario.total_cost_of_energy_power_wind_turbine_inland.value.should be_within(4014.7842).of(401478.42)
    end
    it "total cost of energy_power_wind_turbine_coastal should be within 1.0% of 401478.42" do
        @scenario.total_cost_of_energy_power_wind_turbine_coastal.value.should be_within(4014.7842).of(401478.42)
    end
    it "total cost of agriculture_chp_engine_network_gas should be within 1.0% of 410330.7644" do
        @scenario.total_cost_of_agriculture_chp_engine_network_gas.value.should be_within(4103.3076439999995).of(410330.7644)
    end
    it "total cost of other_burner_wood_pellets should be within 1.0% of 523090.5823" do
        @scenario.total_cost_of_other_burner_wood_pellets.value.should be_within(5230.905823).of(523090.5823)
    end
    it "total cost of agriculture_burner_wood_pellets should be within 1.0% of 523090.5823" do
        @scenario.total_cost_of_agriculture_burner_wood_pellets.value.should be_within(5230.905823).of(523090.5823)
    end
    it "total cost of agriculture_geothermal should be within 1.0% of 538333.3333" do
        @scenario.total_cost_of_agriculture_geothermal.value.should be_within(5383.3333330000005).of(538333.3333)
    end
    it "total cost of energy_heater_for_heat_network_geothermal should be within 1.0% of 538333.3333" do
        @scenario.total_cost_of_energy_heater_for_heat_network_geothermal.value.should be_within(5383.3333330000005).of(538333.3333)
    end
    it "total cost of households_collective_chp_network_gas should be within 1.0% of 542415.1374" do
        @scenario.total_cost_of_households_collective_chp_network_gas.value.should be_within(5424.151374).of(542415.1374)
    end
    it "total cost of buildings_collective_chp_network_gas should be within 1.0% of 542415.1374" do
        @scenario.total_cost_of_buildings_collective_chp_network_gas.value.should be_within(5424.151374).of(542415.1374)
    end
    it "total cost of buildings_space_heater_heatpump_air_water_network_gas should be within 1.0% of 555855.2487" do
        @scenario.total_cost_of_buildings_space_heater_heatpump_air_water_network_gas.value.should be_within(5558.552487).of(555855.2487)
    end
    it "total cost of industry_chemicals_other_steam_recompression_electricity should be within 1.0% of 722626.6667" do
        @scenario.total_cost_of_industry_chemicals_other_steam_recompression_electricity.value.should be_within(7226.266667).of(722626.6667)
    end
    it "total cost of buildings_cooling_heatpump_air_water_network_gas should be within 1.0% of 728104.4946" do
        @scenario.total_cost_of_buildings_cooling_heatpump_air_water_network_gas.value.should be_within(7281.044946).of(728104.4946)
    end
    it "total cost of agriculture_burner_hydrogen should be within 1.0% of 762983.3224" do
        @scenario.total_cost_of_agriculture_burner_hydrogen.value.should be_within(7629.833224).of(762983.3224)
    end
    it "total cost of households_collective_burner_hydrogen should be within 1.0% of 1130040.897" do
        @scenario.total_cost_of_households_collective_burner_hydrogen.value.should be_within(11300.408970000002).of(1130040.897)
    end
    it "total cost of buildings_collective_burner_hydrogen should be within 1.0% of 1130040.897" do
        @scenario.total_cost_of_buildings_collective_burner_hydrogen.value.should be_within(11300.408970000002).of(1130040.897)
    end
    it "total cost of buildings_cooling_collective_heatpump_water_water_ts_electricity should be within 1.0% of 1195212.601" do
        @scenario.total_cost_of_buildings_cooling_collective_heatpump_water_water_ts_electricity.value.should be_within(11952.12601).of(1195212.601)
    end
    it "total cost of energy_power_engine_diesel should be within 1.0% of 1237512.055" do
        @scenario.total_cost_of_energy_power_engine_diesel.value.should be_within(12375.12055).of(1237512.055)
    end
    it "total cost of energy_power_wind_turbine_offshore should be within 1.0% of 1265969.136" do
        @scenario.total_cost_of_energy_power_wind_turbine_offshore.value.should be_within(12659.691359999999).of(1265969.136)
    end
    it "total cost of energy_power_solar_pv_solar_radiation should be within 1.0% of 1370168.0" do
        @scenario.total_cost_of_energy_power_solar_pv_solar_radiation.value.should be_within(13701.68).of(1370168.0)
    end
    it "total cost of agriculture_chp_engine_biogas should be within 1.0% of 1530514.285" do
        @scenario.total_cost_of_agriculture_chp_engine_biogas.value.should be_within(15305.14285).of(1530514.285)
    end
    it "total cost of households_collective_chp_biogas should be within 1.0% of 1530514.285" do
        @scenario.total_cost_of_households_collective_chp_biogas.value.should be_within(15305.14285).of(1530514.285)
    end
    it "total cost of buildings_chp_engine_biogas should be within 1.0% of 1530514.285" do
        @scenario.total_cost_of_buildings_chp_engine_biogas.value.should be_within(15305.14285).of(1530514.285)
    end
    it "total cost of energy_chp_engine_biogas should be within 1.0% of 1530514.285" do
        @scenario.total_cost_of_energy_chp_engine_biogas.value.should be_within(15305.14285).of(1530514.285)
    end
    it "total cost of energy_power_hydro_river should be within 1.0% of 1872000.0" do
        @scenario.total_cost_of_energy_power_hydro_river.value.should be_within(18720.0).of(1872000.0)
    end
    it "total cost of agriculture_chp_supercritical_wood_pellets should be within 1.0% of 2507819.982" do
        @scenario.total_cost_of_agriculture_chp_supercritical_wood_pellets.value.should be_within(25078.199819999998).of(2507819.982)
    end
    it "total cost of households_collective_chp_wood_pellets should be within 1.0% of 2615519.982" do
        @scenario.total_cost_of_households_collective_chp_wood_pellets.value.should be_within(26155.199819999998).of(2615519.982)
    end
    it "total cost of buildings_collective_chp_wood_pellets should be within 1.0% of 2615519.982" do
        @scenario.total_cost_of_buildings_collective_chp_wood_pellets.value.should be_within(26155.199819999998).of(2615519.982)
    end
    it "total cost of industry_steel_blastfurnace_burner_coal_gas should be within 1.0% of 3596133.237" do
        @scenario.total_cost_of_industry_steel_blastfurnace_burner_coal_gas.value.should be_within(35961.332370000004).of(3596133.237)
    end
    it "total cost of industry_other_metals_burner_network_gas should be within 1.0% of 4031297.267" do
        @scenario.total_cost_of_industry_other_metals_burner_network_gas.value.should be_within(40312.97267).of(4031297.267)
    end
    it "total cost of other_burner_coal should be within 1.0% of 4597833.749" do
        @scenario.total_cost_of_other_burner_coal.value.should be_within(45978.33749).of(4597833.749)
    end
    it "total cost of industry_chemicals_other_burner_coal should be within 1.0% of 4597833.749" do
        @scenario.total_cost_of_industry_chemicals_other_burner_coal.value.should be_within(45978.33749).of(4597833.749)
    end
    it "total cost of industry_other_paper_burner_coal should be within 1.0% of 4597833.749" do
        @scenario.total_cost_of_industry_other_paper_burner_coal.value.should be_within(45978.33749).of(4597833.749)
    end
    it "total cost of industry_chemicals_fertilizers_burner_coal should be within 1.0% of 4597833.749" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_coal.value.should be_within(45978.33749).of(4597833.749)
    end
    it "total cost of industry_chemicals_refineries_burner_coal should be within 1.0% of 4597833.749" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_coal.value.should be_within(45978.33749).of(4597833.749)
    end
    it "total cost of industry_other_food_burner_coal should be within 1.0% of 4597833.749" do
        @scenario.total_cost_of_industry_other_food_burner_coal.value.should be_within(45978.33749).of(4597833.749)
    end
    it "total cost of energy_heater_for_heat_network_coal should be within 1.0% of 4904358.486" do
        @scenario.total_cost_of_energy_heater_for_heat_network_coal.value.should be_within(49043.584859999995).of(4904358.486)
    end
    it "total cost of industry_other_paper_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_industry_other_paper_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of industry_chemicals_fertilizers_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of industry_steel_electricfurnace_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_industry_steel_electricfurnace_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of industry_aluminium_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_industry_aluminium_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of industry_chemicals_refineries_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of industry_chemicals_other_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_industry_chemicals_other_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of industry_other_food_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_industry_other_food_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of bunkers_p2l_burner_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_bunkers_p2l_burner_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of energy_heat_network_backup_heater_network_gas should be within 1.0% of 5156192.934" do
        @scenario.total_cost_of_energy_heat_network_backup_heater_network_gas.value.should be_within(51561.92934).of(5156192.934)
    end
    it "total cost of energy_heater_for_heat_network_network_gas should be within 1.0% of 6136991.407" do
        @scenario.total_cost_of_energy_heater_for_heat_network_network_gas.value.should be_within(61369.91407).of(6136991.407)
    end
    it "total cost of industry_other_paper_burner_crude_oil should be within 1.0% of 7391315.827" do
        @scenario.total_cost_of_industry_other_paper_burner_crude_oil.value.should be_within(73913.15827).of(7391315.827)
    end
    it "total cost of industry_chemicals_other_burner_crude_oil should be within 1.0% of 7391315.827" do
        @scenario.total_cost_of_industry_chemicals_other_burner_crude_oil.value.should be_within(73913.15827).of(7391315.827)
    end
    it "total cost of industry_chemicals_fertilizers_burner_crude_oil should be within 1.0% of 7391315.827" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_crude_oil.value.should be_within(73913.15827).of(7391315.827)
    end
    it "total cost of industry_chemicals_refineries_burner_crude_oil should be within 1.0% of 7391315.827" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_crude_oil.value.should be_within(73913.15827).of(7391315.827)
    end
    it "total cost of industry_other_food_burner_crude_oil should be within 1.0% of 7391315.827" do
        @scenario.total_cost_of_industry_other_food_burner_crude_oil.value.should be_within(73913.15827).of(7391315.827)
    end
    it "total cost of energy_heater_for_heat_network_crude_oil should be within 1.0% of 8425822.412" do
        @scenario.total_cost_of_energy_heater_for_heat_network_crude_oil.value.should be_within(84258.22412000001).of(8425822.412)
    end
    it "total cost of energy_power_solar_csp_solar_radiation should be within 1.0% of 9835016.667" do
        @scenario.total_cost_of_energy_power_solar_csp_solar_radiation.value.should be_within(98350.16666999999).of(9835016.667)
    end
    it "total cost of energy_heater_for_heat_network_wood_pellets should be within 1.0% of 9918377.013" do
        @scenario.total_cost_of_energy_heater_for_heat_network_wood_pellets.value.should be_within(99183.77013).of(9918377.013)
    end
    it "total cost of industry_other_paper_burner_wood_pellets should be within 1.0% of 10039566.0" do
        @scenario.total_cost_of_industry_other_paper_burner_wood_pellets.value.should be_within(100395.66).of(10039566.0)
    end
    it "total cost of industry_chemicals_other_burner_wood_pellets should be within 1.0% of 10039566.0" do
        @scenario.total_cost_of_industry_chemicals_other_burner_wood_pellets.value.should be_within(100395.66).of(10039566.0)
    end
    it "total cost of industry_chemicals_fertilizers_burner_wood_pellets should be within 1.0% of 10039566.0" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_wood_pellets.value.should be_within(100395.66).of(10039566.0)
    end
    it "total cost of industry_chemicals_refineries_burner_wood_pellets should be within 1.0% of 10039566.0" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_wood_pellets.value.should be_within(100395.66).of(10039566.0)
    end
    it "total cost of industry_other_food_burner_wood_pellets should be within 1.0% of 10039566.0" do
        @scenario.total_cost_of_industry_other_food_burner_wood_pellets.value.should be_within(100395.66).of(10039566.0)
    end
    it "total cost of energy_power_turbine_network_gas should be within 1.0% of 10655510.3" do
        @scenario.total_cost_of_energy_power_turbine_network_gas.value.should be_within(106555.103).of(10655510.3)
    end
    it "total cost of energy_power_geothermal should be within 1.0% of 10929661.02" do
        @scenario.total_cost_of_energy_power_geothermal.value.should be_within(109296.6102).of(10929661.02)
    end
    it "total cost of industry_chp_turbine_gas_power_fuelmix should be within 1.0% of 11125838.67" do
        @scenario.total_cost_of_industry_chp_turbine_gas_power_fuelmix.value.should be_within(111258.3867).of(11125838.67)
    end
    it "total cost of energy_chp_supercritical_waste_mix should be within 1.0% of 14039557.98" do
        @scenario.total_cost_of_energy_chp_supercritical_waste_mix.value.should be_within(140395.5798).of(14039557.98)
    end
    it "total cost of industry_chemicals_other_burner_hydrogen should be within 1.0% of 15259666.45" do
        @scenario.total_cost_of_industry_chemicals_other_burner_hydrogen.value.should be_within(152596.66449999998).of(15259666.45)
    end
    it "total cost of industry_chemicals_fertilizers_burner_hydrogen should be within 1.0% of 15259666.45" do
        @scenario.total_cost_of_industry_chemicals_fertilizers_burner_hydrogen.value.should be_within(152596.66449999998).of(15259666.45)
    end
    it "total cost of industry_chemicals_refineries_burner_hydrogen should be within 1.0% of 15259666.45" do
        @scenario.total_cost_of_industry_chemicals_refineries_burner_hydrogen.value.should be_within(152596.66449999998).of(15259666.45)
    end
    it "total cost of industry_other_paper_burner_hydrogen should be within 1.0% of 15259666.45" do
        @scenario.total_cost_of_industry_other_paper_burner_hydrogen.value.should be_within(152596.66449999998).of(15259666.45)
    end
    it "total cost of industry_other_food_burner_hydrogen should be within 1.0% of 15259666.45" do
        @scenario.total_cost_of_industry_other_food_burner_hydrogen.value.should be_within(152596.66449999998).of(15259666.45)
    end
    it "total cost of industry_chp_combined_cycle_gas_power_fuelmix should be within 1.0% of 15664947.61" do
        @scenario.total_cost_of_industry_chp_combined_cycle_gas_power_fuelmix.value.should be_within(156649.4761).of(15664947.61)
    end
    it "total cost of energy_power_engine_network_gas should be within 1.0% of 18224334.91" do
        @scenario.total_cost_of_energy_power_engine_network_gas.value.should be_within(182243.3491).of(18224334.91)
    end
    it "total cost of energy_power_supercritical_waste_mix should be within 1.0% of 18824662.08" do
        @scenario.total_cost_of_energy_power_supercritical_waste_mix.value.should be_within(188246.62079999998).of(18824662.08)
    end
    it "total cost of energy_power_turbine_hydrogen should be within 1.0% of 18884313.89" do
        @scenario.total_cost_of_energy_power_turbine_hydrogen.value.should be_within(188843.13890000002).of(18884313.89)
    end
    it "total cost of energy_chp_combined_cycle_network_gas should be within 1.0% of 28712419.56" do
        @scenario.total_cost_of_energy_chp_combined_cycle_network_gas.value.should be_within(287124.1956).of(28712419.56)
    end
    it "total cost of energy_power_hydro_mountain should be within 1.0% of 36142883.82" do
        @scenario.total_cost_of_energy_power_hydro_mountain.value.should be_within(361428.8382).of(36142883.82)
    end
    it "total cost of energy_power_ultra_supercritical_network_gas should be within 1.0% of 36668777.67" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_network_gas.value.should be_within(366687.77670000005).of(36668777.67)
    end
    it "total cost of energy_power_hv_network_electricity should be within 1.0% of 47926596.97" do
        @scenario.total_cost_of_energy_power_hv_network_electricity.value.should be_within(479265.9697).of(47926596.97)
    end
    it "total cost of energy_power_combined_cycle_network_gas should be within 1.0% of 93019927.47" do
        @scenario.total_cost_of_energy_power_combined_cycle_network_gas.value.should be_within(930199.2747).of(93019927.47)
    end
    it "total cost of energy_power_combined_cycle_ccs_network_gas should be within 1.0% of 107581441.8" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_network_gas.value.should be_within(1075814.418).of(107581441.8)
    end
    it "total cost of energy_chp_ultra_supercritical_lignite should be within 1.0% of 139284622.9" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_lignite.value.should be_within(1392846.229).of(139284622.9)
    end
    it "total cost of industry_chp_ultra_supercritical_coal should be within 1.0% of 145903277.9" do
        @scenario.total_cost_of_industry_chp_ultra_supercritical_coal.value.should be_within(1459032.779).of(145903277.9)
    end
    it "total cost of energy_power_ultra_supercritical_lignite should be within 1.0% of 147640738.2" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_lignite.value.should be_within(1476407.382).of(147640738.2)
    end
    it "total cost of energy_power_supercritical_coal should be within 1.0% of 186034157.5" do
        @scenario.total_cost_of_energy_power_supercritical_coal.value.should be_within(1860341.575).of(186034157.5)
    end
    it "total cost of energy_power_ultra_supercritical_coal should be within 1.0% of 202611280.6" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_coal.value.should be_within(2026112.806).of(202611280.6)
    end
    it "total cost of energy_power_combined_cycle_hydrogen should be within 1.0% of 210717374.9" do
        @scenario.total_cost_of_energy_power_combined_cycle_hydrogen.value.should be_within(2107173.7490000003).of(210717374.9)
    end
    it "total cost of energy_power_ultra_supercritical_crude_oil should be within 1.0% of 219111908.9" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_crude_oil.value.should be_within(2191119.089).of(219111908.9)
    end
    it "total cost of energy_power_combined_cycle_ccs_coal should be within 1.0% of 223528644.4" do
        @scenario.total_cost_of_energy_power_combined_cycle_ccs_coal.value.should be_within(2235286.444).of(223528644.4)
    end
    it "total cost of energy_power_ultra_supercritical_oxyfuel_ccs_lignite should be within 1.0% of 234334322.1" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_oxyfuel_ccs_lignite.value.should be_within(2343343.221).of(234334322.1)
    end
    it "total cost of energy_chp_ultra_supercritical_coal should be within 1.0% of 240017709.6" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_coal.value.should be_within(2400177.096).of(240017709.6)
    end
    it "total cost of energy_power_combined_cycle_coal should be within 1.0% of 242893450.8" do
        @scenario.total_cost_of_energy_power_combined_cycle_coal.value.should be_within(2428934.5080000004).of(242893450.8)
    end
    it "total cost of energy_power_ultra_supercritical_ccs_coal should be within 1.0% of 279235394.6" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_ccs_coal.value.should be_within(2792353.9460000005).of(279235394.6)
    end
    it "total cost of energy_power_nuclear_gen2_uranium_oxide should be within 1.0% of 303611318.3" do
        @scenario.total_cost_of_energy_power_nuclear_gen2_uranium_oxide.value.should be_within(3036113.183).of(303611318.3)
    end
    it "total cost of energy_power_ultra_supercritical_cofiring_coal should be within 1.0% of 332737946.0" do
        @scenario.total_cost_of_energy_power_ultra_supercritical_cofiring_coal.value.should be_within(3327379.46).of(332737946.0)
    end
    it "total cost of energy_chp_ultra_supercritical_cofiring_coal should be within 1.0% of 383405193.3" do
        @scenario.total_cost_of_energy_chp_ultra_supercritical_cofiring_coal.value.should be_within(3834051.933).of(383405193.3)
    end
    it "total cost of energy_power_nuclear_gen3_uranium_oxide should be within 1.0% of 465241620.6" do
        @scenario.total_cost_of_energy_power_nuclear_gen3_uranium_oxide.value.should be_within(4652416.206).of(465241620.6)
    end

  end
end
