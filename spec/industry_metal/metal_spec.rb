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

     it "Using DRI hydrogen instead of Blastfurnace should decrease primary demand, import, CO2 emission and increase cost" do

       # Put bat to 100 %
       @scenario.industry_steel_blastfurnace_bof_share = 0 #%
       @scenario.industry_steel_dri_hydrogen_share = 100 #%
       @scenario.industry_steel_dri_network_gas_share = 0 #%
       @scenario.industry_steel_cyclonefurnace_bof_share = 0 #%
       @scenario.industry_steel_scrap_hbi_eaf_share = 0 #%

       expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
       expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
       expect(@scenario.dashboard_energy_import_netto).to decrease
       expect(@scenario.total_costs).to increase
     end

     it "When putting DRI Network gas to 10 % should decrease total energy demand, import, CO2 emission and decrease cost" do

       # Put Cyclonefurnace to 1%
       @scenario.industry_steel_dri_hydrogen_share = 0 #%
       @scenario.industry_steel_dri_network_gas_share = 10 #%
       @scenario.industry_steel_blastfurnace_bof_share = 90 #%
       @scenario.industry_steel_cyclonefurnace_bof_share = 0 #%
       @scenario.industry_steel_scrap_hbi_eaf_share = 0 #%

       # The DRI is more efficient, so we would expect the total energy to decrease
       expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
       expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
       expect(@scenario.total_costs).to decrease
     end

     it "Using Recycling should decrease total energy demand, CO2 emission and cost" do

       # Put the electric furnace to 100%
      @scenario.industry_steel_dri_hydrogen_share = 0 #%
       @scenario.industry_steel_dri_network_gas_share = 0 #%
       @scenario.industry_steel_blastfurnace_bof_share = 0 #%
       @scenario.industry_steel_cyclonefurnace_bof_share = 0 #%
       @scenario.industry_steel_scrap_hbi_eaf_share = 100 #%

       # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
       expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
       expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
       expect(@scenario.total_costs).to decrease
     end
  end

  describe "Bio Feedstock" do

    it "Using Bio Feedstock in Cyclone furnace should, CO2 but increase bio-footprint" do
      @scenario.industry_steel_blastfurnace_bof_share = 0 #%
      @scenario.industry_steel_dri_network_gas_share = 0 #%
      @scenario.industry_steel_dri_hydrogen_share = 0 #%
      @scenario.industry_steel_scrap_hbi_eaf_share = 0 #%
      @scenario.industry_steel_cyclonefurnace_bof_share = 100 #%
      @scenario.industry_steel_cyclonefurnace_bof_wood_pellets_share = 40 #%

      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_bio_footprint).to increase
    end
  end
end
