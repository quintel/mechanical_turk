# Turk to help solve the issue MdH has with including more efficient technologies.
require 'spec_helper'

describe "Standard scenario: Metal production" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: 'nl', end_year: 2050,  autobalance: true)
  end

  describe "Production volume:" do

    it "Should increase energy demand, import, CO2 emission and costs when steel production is increased" do 
      @scenario.industry_steel_production = 5 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.dashboard_energy_import_netto).to increase
      expect(@scenario.total_costs).to increase
    end   

    it "Should increase energy demand, import, CO2 emission and costs when aluminium production is increased" do 
      @scenario.industry_aluminium_production = 5 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.dashboard_energy_import_netto).to increase
      expect(@scenario.total_costs).to increase
    end   

    it "Should increase energy demand, import, CO2 emission and costs when production of other metals is increased" do 
      @scenario.industry_other_metals_production = 5 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.dashboard_energy_import_netto).to increase
      expect(@scenario.total_costs).to increase
    end   
  end

  describe "Aluminium share group:" do

    it "Using BAT instead of current should decrease demand, import, CO2 emission and cost" do

      # Initialize to 100 % current
      @scenario.industry_aluminium_electrolysis_current_share = 100 #%
      @scenario.industry_aluminium_electrolysis_bat_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_share = 0 #%
      @scenario.industry_aluminium_smeltoven_share = 0 #%
      pp "CURRENT: dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      # Now put bat to 100 %
      @scenario.industry_aluminium_electrolysis_current_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_share = 100 #%
      @scenario.industry_aluminium_carbothermalreduction_share = 0 #%
      @scenario.industry_aluminium_smeltoven_share = 0 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
    end

    it "Using Carbothermal reduction instead of BAT should decrease demand, import, CO2 emission and cost" do

      # Now put bat to 100 %
      @scenario.industry_aluminium_electrolysis_current_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_share = 100 #%
      @scenario.industry_aluminium_carbothermalreduction_share = 0 #%
      @scenario.industry_aluminium_smeltoven_share = 0 #%
      pp "CARBOTHERMAL REDUCTION: to 100% dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      @scenario.industry_aluminium_electrolysis_current_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_share = 100 #%
      @scenario.industry_aluminium_smeltoven_share = 0 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
    end

    it "Using Smelt oven (recycling) instead of Carbothermal reduction should decrease demand, import, CO2 emission and cost" do

      # Now put bat to 100 %
      @scenario.industry_aluminium_electrolysis_current_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_share = 100 #%
      @scenario.industry_aluminium_smeltoven_share = 0 #%
      pp "SMELT OVEN (RECYCLING): to 100% dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      @scenario.industry_aluminium_electrolysis_current_share = 0 #%
      @scenario.industry_aluminium_electrolysis_bat_share = 0 #%
      @scenario.industry_aluminium_carbothermalreduction_share = 0 #%
      @scenario.industry_aluminium_smeltoven_share = 100 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
    end
  end

  describe "Other metals share group" do

    it "Improving efficiency of electric processes should decrease demand, import, CO2 emission and cost" do
      @scenario.industry_other_metals_process_electricity_efficiency = 2 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_energy_import_netto).to decrease
      expect(@scenario.total_costs).to decrease
    end

    it "Improving efficiency of heat processes should decrease demand, import, CO2 emission and cost" do
      @scenario.industry_other_metals_process_heat_efficiency = 2 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_energy_import_netto).to decrease
      expect(@scenario.total_costs).to decrease
    end
  end

  describe "Steel share group:" do

    it "Using BAT instead of current should decrease primary demand, import, CO2 emission and cost" do

      # Now put bat to 100 %
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 100 #%
      @scenario.industry_steel_hisarna_share = 0 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_energy_import_netto).to decrease
      expect(@scenario.total_costs).to decrease
    end

    it "When putting industry_steel_hisarna to 1 % should decrease total energy demand, import, CO2 emission and cost" do

      # Putting the hisarna to 100%
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 99 #%
      @scenario.industry_steel_hisarna_share = 1 #%

      # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
    end

    it "Using Electric furnace (recycling) should decrease total energy demand, import, CO2 emission and cost" do

      # Putting the electric furnace to 100%
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 0 #%
      @scenario.industry_steel_hisarna_share = 0 #%
      industry_steel_electricfurnace_share = 100 #%

      # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
    end

    it "Should decrease the load of the backup burner when putting the hisarna to 1%" do





      # Putting the Smeltoven to 100%
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 99 #%
      @scenario.industry_steel_hisarna_share = 1 #%

      expect(@scenario.energy_heat_network_backup_heater_gas_power_fuelmix_demand).to decrease
      expect(@scenario.energy_heat_remainder_from_heat_network_unused_steam_hot_water_demand).to_not change
    end
  end
end

