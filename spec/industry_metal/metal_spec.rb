# Turk to help solve the issue MdH has with including more efficient technologies.
require 'spec_helper'

describe "Standard scenario: Metal production" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: 'nl', end_year: 2050,  autobalance: true, inputs: {
        settings_enable_merit_order: 1
    })
  end

  describe "Production volume:" do

    it "Should increase energy demand, import, CO2 emission and costs when steel production is increased" do
      @scenario.industry_steel_production = 105 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.dashboard_energy_import_netto).to increase
      expect(@scenario.total_costs).to increase
    end

    it "Should increase energy demand, import, CO2 emission and costs when aluminium production is increased" do
      @scenario.industry_aluminium_production = 105 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.dashboard_energy_import_netto).to increase
      expect(@scenario.total_costs).to increase
    end

    it "Should increase energy demand, import, CO2 emission and costs when production of other metals is increased" do
      @scenario.industry_other_metals_production = 105 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.dashboard_energy_import_netto).to increase
      expect(@scenario.total_costs).to increase
    end
  end

  describe "Aluminium share group:" do

    it "Using BAT instead of current should decrease demand, import, CO2 emission and cost" do

      # Initialize to 100 % current
      @scenario.industry_aluminium_electrolysis_current_electricity_share = 100 #%
      @scenario.industry_aluminium_electrolysis_bat_electricity_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_electricity_share = 0 #%
      @scenario.industry_aluminium_smeltoven_electricity_share = 0 #%

      @scenario.refresh!

      # Now put bat to 100 %
      @scenario.industry_aluminium_electrolysis_current_electricity_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_electricity_share = 100 #%
      @scenario.industry_aluminium_carbothermalreduction_electricity_share = 0 #%
      @scenario.industry_aluminium_smeltoven_electricity_share = 0 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
    end

    it "Using Carbothermal reduction instead of BAT should decrease demand, import, CO2 emission and cost" do

      # Initialize put bat to 100 %
      @scenario.industry_aluminium_electrolysis_current_electricity_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_electricity_share = 100 #%
      @scenario.industry_aluminium_carbothermalreduction_electricity_share = 0 #%
      @scenario.industry_aluminium_smeltoven_electricity_share = 0 #%

      @scenario.refresh!

      # Now put carbothermal reduction to 100 %
      @scenario.industry_aluminium_electrolysis_current_electricity_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_electricity_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_electricity_share = 100 #%
      @scenario.industry_aluminium_smeltoven_electricity_share = 0 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
    end

    it "Using Smelt oven (recycling) instead of Carbothermal reduction should decrease demand, import, CO2 emission and cost" do

      # Initialize carbothermal reduction to 100 %
      @scenario.industry_aluminium_electrolysis_current_electricity_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_electricity_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_electricity_share = 100 #%
      @scenario.industry_aluminium_smeltoven_electricity_share = 0 #%

      @scenario.refresh!

      # Now put the smeltoven to 100%
      @scenario.industry_aluminium_electrolysis_current_electricity_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_electricity_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_electricity_share = 0 #%
      @scenario.industry_aluminium_smeltoven_electricity_share = 100 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
    end
  end

  describe "Other metals share group" do

    it "Improving efficiency of electric processes should decrease demand, import, CO2 emission and cost" do
      @scenario.industry_other_metals_process_electricity_efficiency = 2 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_energy_import_netto).to decrease
      expect(@scenario.total_costs).to decrease
    end

    it "Improving efficiency of heat processes should decrease demand, import, CO2 emission and cost" do
      @scenario.industry_other_metals_process_heat_useable_heat_efficiency = 2 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_energy_import_netto).to decrease
      expect(@scenario.total_costs).to decrease
    end
  end

  describe "Steel share group:" do
    before(:each) do
     @scenario = Turk::Scenario.new(area_code: 'nl', end_year: 2050,  autobalance: true)
    end

     it "Using BAT instead of current should decrease primary demand, import, CO2 emission and cost" do

       # Put bat to 100 %
       @scenario.industry_steel_blastfurnace_current_consumption_useable_heat_share = 0 #%
       @scenario.industry_steel_blastfurnace_bat_consumption_useable_heat_share = 100 #%
       @scenario.industry_steel_hisarna_consumption_useable_heat_share = 0 #%

       expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
       expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
       expect(@scenario.dashboard_energy_import_netto).to decrease
       expect(@scenario.total_costs).to decrease
     end

     it "When putting industry_steel_hisarna to 1 % should decrease total energy demand, import, CO2 emission and cost" do

       # Put hisarna to 1%
       @scenario.industry_steel_blastfurnace_current_consumption_useable_heat_share = 0 #%
       @scenario.industry_steel_blastfurnace_bat_consumption_useable_heat_share = 99 #%
       @scenario.industry_steel_hisarna_consumption_useable_heat_share = 1 #%

       # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
       expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
     end

     it "Using Electric furnace (recycling) should decrease total energy demand, import, CO2 emission and cost" do

       # Put the electric furnace to 100%
       @scenario.industry_steel_blastfurnace_current_consumption_useable_heat_share = 0 #%
       @scenario.industry_steel_blastfurnace_bat_consumption_useable_heat_share = 0 #%
       @scenario.industry_steel_hisarna_consumption_useable_heat_share = 0 #%
       @scenario.industry_steel_electricfurnace_electricity_share = 100 #%

       # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
       expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
     end

     it "Should decrease the load of the backup burner when putting the hisarna to 1%" do

       # Put hisarna to 1%
       @scenario.industry_steel_blastfurnace_current_consumption_useable_heat_share = 0 #%
       @scenario.industry_steel_blastfurnace_bat_consumption_useable_heat_share = 99 #%
       @scenario.industry_steel_hisarna_consumption_useable_heat_share = 1 #%

       expect(@scenario.industry_heat_backup_burner_network_gas_in_industrial_heat_network_mekko).to decrease
       expect(@scenario.industry_unused_local_production_steam_hot_water_in_industrial_heat_network_mekko).to_not change
     end
  end

  describe "Bio Feedstock" do

    it "Using Bio Feedstock in Hisarna furnace should, CO2 and cost but increase bio-footprint" do
      @scenario.industry_steel_blastfurnace_current_consumption_useable_heat_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_consumption_useable_heat_share = 0 #%
      @scenario.industry_steel_hisarna_consumption_useable_heat_share = 100 #%
      @scenario.energy_steel_hisarna_transformation_coal_woodpellets_share = 100 #%

      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_bio_footprint).to increase
      expect(@scenario.total_costs).to decrease
    end
  end
end
