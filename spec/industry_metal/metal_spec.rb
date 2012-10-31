# Turk to help solve the issue MdH has with including more efficient technologies.
require 'spec_helper'

describe "Standard scenario: Metal production" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: 'nl', end_year: 2050,  autobalance: true)
  end

  describe "Production volume:" do

    it "Should increase energy use and transformation losses when steel production is increased" do 
      @scenario.industry_steel_production = 5 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to increase
    end   

    it "Should increase energy use and transformation losses when aluminium production is increased" do 
      @scenario.industry_aluminium_production = 5 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to increase
    end   

    it "Should increase energy use and transformation losses when steel production is increased" do 
      @scenario.industry_other_metals_production = 5 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final).to increase
    end   

    

  end


  describe "Steel share group:" do

    it "Using industry_steel_hisarna instead of BAT should decrease demand" do

      # Initialize to 100 % current
      @scenario.industry_steel_blastfurnace_current_share = 100 #%
      @scenario.industry_steel_blastfurnace_bat_share = 0 #%
      @scenario.industry_steel_hisarna_share = 0 #%
      @scenario.industry_steel_electricfurnace_share = 0 #%
      pp "CURRENT: dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      # Now put bat to 100 %
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 100 #%
      @scenario.industry_steel_hisarna_share = 0 #%
      pp "BAT: dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease

      puts "When putting industry_steel_hisarna to 1 % should decrease total energy demand"

      # Putting the Smeltoven to 100%
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 99 #%
      @scenario.industry_steel_hisarna_share = 1 #%
      pp "HISARNA: dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
      expect(@scenario.dashboard_energy_demand_primary_of_final).to decrease
    end

    it "Should decrease the load of the backup burner when putting the hisarna to 1%" do

      # Now put bat to 100 %
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 100 #%
      @scenario.industry_steel_hisarna_share = 0 #%
      pp "BAT to 100% dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      # Putting the Smeltoven to 100%
      @scenario.industry_steel_blastfurnace_current_share = 0 #%
      @scenario.industry_steel_blastfurnace_bat_share = 99 #%
      @scenario.industry_steel_hisarna_share = 1 #%

      expect(@scenario.energy_heat_network_backup_heater_gas_power_fuelmix_demand).to decrease
    end

    it "Should not increase dumped heat" do
      expect(@scenario.energy_heat_remainder_from_heat_network_unused_steam_hot_water_demand).to_not change
    end

    # it "should give some output" do
    #   pp "energy_steel_blastfurnace_current_transformation_demand: " + @scenario.energy_steel_blastfurnace_current_transformation_demand.future.to_s
    #   pp "energy_steel_hisarna_transformation_demand: " + @scenario.energy_steel_hisarna_transformation_demand.future.to_s
    #   pp "industry_useful_demand_useable_heat_demand: " + @scenario.industry_useful_demand_useable_heat_demand.future.to_s
    # end
  end
end