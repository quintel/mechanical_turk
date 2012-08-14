require 'spec_helper'

describe "network infrastructure investments" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2040)
  end

  context "start scenario" do

    it "no infrastructure investments needed" do
      @scenario.lv_net_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be == 0.0

    end
  end

  context "Test scenario A id 3887" do

    it "the infrastructure investments need to be around 57" do
      @scenario.set_input "households_heating_gas_combi_heater_share", 0.0
      @scenario.set_input "households_heating_heat_pump_add_on_share", 0.0
      @scenario.set_input "households_heating_gas_fired_heat_pump_share", 0.0
      @scenario.set_input "households_heating_heat_network_share", 0.0
      @scenario.set_input "households_heating_pellet_stove_share", 0.0
      @scenario.set_input "households_heating_electric_heater_share", 0.0
      @scenario.set_input "households_heating_gas_fired_heater_share", 0.0
      @scenario.set_input "households_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "households_heating_coal_fired_heater_share", 0.0
      @scenario.set_input "households_cooling_gas_fired_heat_pump_share", 0.0
      @scenario.set_input "households_heat_demand_per_person", -1.6
      @scenario.set_input "households_heating_heat_pump_ground_share", 90.0
      @scenario.set_input "households_heating_geothermal_share", 0.0
      @scenario.set_input "households_heating_micro_chp_share", 0.0
      @scenario.set_input "households_heating_heat_pump_with_ts_share", 0.0
      @scenario.set_input "households_heating_biomass_chp_share", 100.0
      @scenario.set_input "households_heating_small_gas_chp_share", 0.0
      @scenario.set_input "households_market_penetration_solar_panels", 100.0
      @scenario.set_input "buildings_heating_gas_fired_heater_share", 0.0
      @scenario.set_input "buildings_heating_electric_heater_share", 0.0
      @scenario.set_input "buildings_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "buildings_heating_biomass_fired_heater_share", 0.0
      @scenario.set_input "buildings_heating_small_gas_chp_share", 0.0
      @scenario.set_input "buildings_electricity_per_student_employee", -1.6
      @scenario.set_input "buildings_heating_heat_pump_with_ts_share", 90.0
      @scenario.set_input "buildings_heating_gas_fired_heat_pump_share", 0.0
      @scenario.set_input "buildings_heating_solar_thermal_panels_share", 0.0
      @scenario.set_input "buildings_heating_biomass_chp_share", 0.0
      @scenario.set_input "buildings_heating_heat_network_share", 10.0
      @scenario.set_input "buildings_market_penetration_solar_panels", 100.0
      @scenario.set_input "transport_cars_diesel_share", 30.000000000000004
      @scenario.set_input "transport_cars_gasoline_share", 0.0
      @scenario.set_input "transport_cars_lpg_share", 0.0
      @scenario.set_input "transport_cars_compressed_gas_share", 0.0
      @scenario.set_input "transport_trains_diesel_share", 6.4
      @scenario.set_input "transport_trains_electric_share", 93.6
      @scenario.set_input "transport_cars", 1.3000000000000003
      @scenario.set_input "transport_trucks", 1.3000000000000003
      @scenario.set_input "transport_cars_electric_share", 70.0
      @scenario.set_input "transport_trucks_electric_share", 70.0
      @scenario.set_input "transport_trucks_diesel_share", 30.000000000000004
      @scenario.set_input "transport_trucks_gasoline_share", 0.0
      @scenario.set_input "transport_trucks_compressed_gas_share", 0.0
      @scenario.set_input "transport_efficiency_electric_vehicles", 0.6000000000000001
      @scenario.set_input "transport_efficiency_combustion_engine_trucks", 0.6
      @scenario.set_input "transport_efficiency_combustion_engine_cars", 0.6
      @scenario.set_input "industry_heating_gas_fired_heater_share", 0.0
      @scenario.set_input "industry_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "industry_heating_coal_fired_heater_share", 0.0
      @scenario.set_input "industry_heating_biomass_fired_heater_share", 100.0
      @scenario.set_input "industry_heating_combined_heat_power_share", 0.0
      @scenario.set_input "industry_heat_demand", -1.1999999999853914
      @scenario.set_input "industry_heat_from_fuels", 0.2
      @scenario.set_input "industry_number_of_gas_chp", 120.2
      @scenario.set_input "industry_number_of_biomass_chp", 104.8
      @scenario.set_input "agriculture_heating_gas_fired_heater_share", 0.0
      @scenario.set_input "agriculture_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "agriculture_heating_combined_heat_power_share", 10.0
      @scenario.set_input "agriculture_heat_demand", -1.5999999401601
      @scenario.set_input "agriculture_heating_biomass_fired_heater_share", 0.0
      @scenario.set_input "agriculture_heating_heat_pump_with_ts_share", 20.000000000000004
      @scenario.set_input "agriculture_heating_geothermal_share", 70.0
      @scenario.set_input "number_of_pulverized_coal", 0.0
      @scenario.set_input "number_of_coal_iggc", 0.0
      @scenario.set_input "number_of_coal_conventional", 0.0
      @scenario.set_input "number_of_central_coal_chp", 0.0
      @scenario.set_input "number_of_nuclear_3rd_gen", 0.0
      @scenario.set_input "transport_diesel_share", 100.0
      @scenario.set_input "transport_biodiesel_share", 0.0
      @scenario.set_input "transport_gasoline_share", 96.8
      @scenario.set_input "transport_bio_ethanol_share", 3.2
      @scenario.set_input "natural_gas_total_share", 0.0
      @scenario.set_input "green_gas_total_share", 100.0
      @scenario.set_input "number_of_wind_onshore_land", 2325.0
      @scenario.set_input "number_of_wind_onshore_coast", 0.0
      @scenario.set_input "number_of_wind_offshore", 6675.000000000001
      @scenario.set_input "households_heating_district_heating_network_share", 10.0
    
      @scenario.lv_net_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(23* 10**9)
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(5* 10**9)
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(2* 10**9)
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(6* 10**9)
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(6* 10**9)
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(15* 10**9)
    end
  end  
  
  context "Test scenario B id 3893" do

    it "the infrastructure investments need to be around 32" do
      @scenario.set_input "households_heating_heat_pump_add_on_share", 0.0
      @scenario.set_input "households_heating_gas_combi_heater_share", 0.0
      @scenario.set_input "households_heating_gas_fired_heat_pump_share", 0.0
      @scenario.set_input "households_heating_heat_network_share", 100.0
      @scenario.set_input "households_heating_pellet_stove_share", 0.0
      @scenario.set_input "households_heating_electric_heater_share", 0.0
      @scenario.set_input "households_heating_gas_fired_heater_share", 0.0
      @scenario.set_input "households_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "households_heating_coal_fired_heater_share", 0.0
      @scenario.set_input "households_cooling_gas_fired_heat_pump_share", 0.0
      @scenario.set_input "households_electricity_demand_per_person", 2.5000000000000004
      @scenario.set_input "households_heat_demand_per_person", -0.9999999997635
      @scenario.set_input "households_heating_heat_pump_ground_share", 20.000000000000004
      @scenario.set_input "households_heating_geothermal_share", 0.0
      @scenario.set_input "households_heating_micro_chp_share", 60.0000000000001
      @scenario.set_input "households_heating_heat_pump_with_ts_share", 0.0
      @scenario.set_input "households_heating_biomass_chp_share", 0.0
      @scenario.set_input "households_heating_small_gas_chp_share", 0.0
      @scenario.set_input "households_market_penetration_solar_panels", 76.5
      @scenario.set_input "buildings_heating_gas_fired_heater_share", 0.0
      @scenario.set_input "buildings_heating_electric_heater_share", 0.0
      @scenario.set_input "buildings_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "buildings_heating_biomass_fired_heater_share", 70.0
      @scenario.set_input "buildings_heating_small_gas_chp_share", 0.0
      @scenario.set_input "buildings_electricity_per_student_employee", 1.0
      @scenario.set_input "buildings_heat_per_employee_student", -0.9999999999997718
      @scenario.set_input "buildings_heating_heat_pump_with_ts_share", 20.000000000000004
      @scenario.set_input "buildings_heating_gas_fired_heat_pump_share", 0.0
      @scenario.set_input "buildings_heating_solar_thermal_panels_share", 0.0
      @scenario.set_input "buildings_heating_biomass_chp_share", 0.0
      @scenario.set_input "buildings_heating_heat_network_share", 10.0
      @scenario.set_input "transport_cars_diesel_share", 30.000000000000004
      @scenario.set_input "transport_cars_gasoline_share", 0.0
      @scenario.set_input "transport_cars_lpg_share", 0.0
      @scenario.set_input "transport_cars_compressed_gas_share", 0.0
      @scenario.set_input "transport_trains_diesel_share", 6.4
      @scenario.set_input "transport_trains_electric_share", 93.6
      @scenario.set_input "transport_cars", 1.2000000000000002
      @scenario.set_input "transport_trucks", 1.2000000000000002
      @scenario.set_input "transport_cars_electric_share", 70.0
      @scenario.set_input "transport_trucks_electric_share", 70.0
      @scenario.set_input "transport_trucks_diesel_share", 30.000000000000004
      @scenario.set_input "transport_trucks_gasoline_share", 0.0
      @scenario.set_input "transport_trucks_compressed_gas_share", 0.0
      @scenario.set_input "industry_heating_gas_fired_heater_share", 100.0
      @scenario.set_input "industry_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "industry_heating_coal_fired_heater_share", 0.0
      @scenario.set_input "industry_heating_biomass_fired_heater_share", 0.0
      @scenario.set_input "industry_heating_combined_heat_power_share", 0.0
      @scenario.set_input "industry_heat_demand", -0.5
      @scenario.set_input "industry_heat_from_fuels", 0.2
      @scenario.set_input "industry_number_of_biomass_chp", 104.8
      @scenario.set_input "agriculture_heating_gas_fired_heater_share", 0.0
      @scenario.set_input "agriculture_heating_oil_fired_heater_share", 0.0
      @scenario.set_input "agriculture_heating_combined_heat_power_share", 30.000000000000004
      @scenario.set_input "agriculture_heat_demand", -0.9999999999999999
      @scenario.set_input "agriculture_heating_biomass_fired_heater_share", 70.0
      @scenario.set_input "agriculture_heating_heat_pump_with_ts_share", 0.0
      @scenario.set_input "agriculture_heating_geothermal_share", 0.0
      @scenario.set_input "number_of_pulverized_coal", 0.0
      @scenario.set_input "number_of_coal_iggc", 0.0
      @scenario.set_input "number_of_coal_conventional", 0.0
      @scenario.set_input "number_of_central_coal_chp", 0.0
      @scenario.set_input "number_of_gas_conventional", 0.0
      @scenario.set_input "number_of_gas_ccgt", 0.0
      @scenario.set_input "number_of_large_gas_chp", 0.0
      @scenario.set_input "number_of_gas_ccgt_ccs", 26.200000000000003
      @scenario.set_input "number_of_nuclear_3rd_gen", 0.0
      @scenario.set_input "natural_gas_total_share", 0.0
      @scenario.set_input "green_gas_total_share", 100.0
      @scenario.set_input "number_of_wind_onshore_land", 1650.0
      @scenario.set_input "number_of_wind_onshore_coast", 0.0
      @scenario.set_input "number_of_wind_offshore", 2000.0
      @scenario.set_input "transport_diesel_share", 100.0
      @scenario.set_input "transport_biodiesel_share", 0.0
      @scenario.set_input "transport_gasoline_share", 96.8
      @scenario.set_input "transport_bio_ethanol_share", 3.2
      @scenario.set_input "households_heating_district_heating_network_share", 20.000000000000004



      @scenario.lv_net_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(13* 10**9)
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(3* 10**9)
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(2* 10**9)
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(4* 10**9)
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(5* 10**9)
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(6* 10**9)
    end
  end
  
  context "Test scenario C id 3901" do

    it "the infrastructure investments need to be around 112" do
      @scenario.set_input   "households_heating_gas_combi_heater_share", 0.0
      @scenario.set_input   "households_heating_heat_pump_add_on_share", 0.0
      @scenario.set_input   "households_heating_gas_fired_heat_pump_share", 0.0
      @scenario.set_input   "households_heating_heat_network_share", 100.0
      @scenario.set_input   "households_heating_pellet_stove_share", 0.0
      @scenario.set_input   "households_heating_electric_heater_share", 0.0
      @scenario.set_input   "households_heating_gas_fired_heater_share", 0.0
      @scenario.set_input   "households_heating_oil_fired_heater_share", 0.0
      @scenario.set_input   "households_heating_coal_fired_heater_share", 0.0
      @scenario.set_input   "households_cooling_gas_fired_heat_pump_share", 0.0
      @scenario.set_input   "households_electricity_demand_per_person", 2.5000000000000004
      @scenario.set_input   "households_heat_demand_per_person", -0.9999999999999999
      @scenario.set_input   "households_heating_heat_pump_ground_share", 65.0
      @scenario.set_input   "households_heating_geothermal_share", 0.0
      @scenario.set_input   "households_heating_micro_chp_share", 0.0
      @scenario.set_input   "households_heating_heat_pump_with_ts_share", 0.0
      @scenario.set_input   "households_heating_biomass_chp_share", 0.0
      @scenario.set_input   "households_heating_small_gas_chp_share", 0.0
      @scenario.set_input   "households_market_penetration_solar_panels", 27.000000000000004
      @scenario.set_input   "buildings_heating_gas_fired_heater_share", 0.0
      @scenario.set_input   "buildings_heating_electric_heater_share", 0.0
      @scenario.set_input   "buildings_heating_oil_fired_heater_share", 0.0
      @scenario.set_input   "buildings_heating_biomass_fired_heater_share", 0.0
      @scenario.set_input   "buildings_heating_small_gas_chp_share", 0.0
      @scenario.set_input   "buildings_electricity_per_student_employee", 1.0
      @scenario.set_input   "buildings_heat_per_employee_student", -0.9999999999997718
      @scenario.set_input   "buildings_heating_heat_pump_with_ts_share", 71.8
      @scenario.set_input   "buildings_heating_gas_fired_heat_pump_share", 0.0
      @scenario.set_input   "buildings_heating_solar_thermal_panels_share", 0.0
      @scenario.set_input   "buildings_heating_biomass_chp_share", 0.0
      @scenario.set_input   "buildings_heating_heat_network_share", 28.200000000000003
      @scenario.set_input   "transport_cars_diesel_share", 0.0
      @scenario.set_input   "transport_cars_gasoline_share", 0.0
      @scenario.set_input   "transport_cars_lpg_share", 0.0
      @scenario.set_input   "transport_cars_compressed_gas_share", 0.0
      @scenario.set_input   "transport_trains_diesel_share", 6.4
      @scenario.set_input   "transport_trains_electric_share", 93.6
      @scenario.set_input   "transport_cars", 2.5000000000000004
      @scenario.set_input   "transport_trucks", 2.5000000000000004
      @scenario.set_input   "transport_cars_electric_share", 100.0
      @scenario.set_input   "transport_trucks_electric_share", 100.0
      @scenario.set_input   "transport_trucks_diesel_share", 0.0
      @scenario.set_input   "transport_trucks_gasoline_share", 0.0
      @scenario.set_input   "transport_trucks_compressed_gas_share", 0.0
      @scenario.set_input   "industry_heating_gas_fired_heater_share", 100.0
      @scenario.set_input   "industry_heating_oil_fired_heater_share", 0.0
      @scenario.set_input   "industry_heating_coal_fired_heater_share", 0.0
      @scenario.set_input   "industry_heating_biomass_fired_heater_share", 0.0
      @scenario.set_input   "industry_heating_combined_heat_power_share", 0.0
      @scenario.set_input   "industry_heat_demand", -0.5
      @scenario.set_input   "industry_heat_from_fuels", 0.2
      @scenario.set_input   "industry_number_of_biomass_chp", 133.0
      @scenario.set_input   "agriculture_heating_gas_fired_heater_share", 0.0
      @scenario.set_input   "agriculture_heating_oil_fired_heater_share", 0.0
      @scenario.set_input   "agriculture_heating_combined_heat_power_share", 35.0
      @scenario.set_input   "agriculture_heat_demand", -0.9999999999997718
      @scenario.set_input   "agriculture_heating_biomass_fired_heater_share", 10.0
      @scenario.set_input   "agriculture_heating_heat_pump_with_ts_share", 15.0
      @scenario.set_input   "agriculture_heating_geothermal_share", 40.00000000000001
      @scenario.set_input   "number_of_pulverized_coal", 0.0
      @scenario.set_input   "number_of_coal_iggc", 0.0
      @scenario.set_input   "number_of_coal_conventional", 0.0
      @scenario.set_input   "number_of_central_coal_chp", 0.0
      @scenario.set_input   "number_of_pulverized_coal_ccs", 31.000000000000004
      @scenario.set_input   "number_of_nuclear_3rd_gen", 8.7
      @scenario.set_input   "natural_gas_total_share", 0.0
      @scenario.set_input   "green_gas_total_share", 0.0
      @scenario.set_input   "number_of_wind_onshore_land", 660.0000000000001
      @scenario.set_input   "number_of_wind_onshore_coast", 0.0
      @scenario.set_input   "number_of_wind_offshore", 2000.0
      @scenario.set_input   "transport_diesel_share", 100.0
      @scenario.set_input   "transport_biodiesel_share", 0.0
      @scenario.set_input   "transport_gasoline_share", 96.8
      @scenario.set_input   "transport_bio_ethanol_share", 3.2
      @scenario.set_input   "households_heating_district_heating_network_share", 35.0
      

      @scenario.lv_net_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(60* 10**9)
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(10* 10**9)
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(5* 10**9)
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(12* 10**9)
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(13* 10**9)
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be_within(1* 10**9).of(13* 10**9)
    end
  end



end