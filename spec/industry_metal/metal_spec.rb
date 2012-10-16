# Turk to help solve the issue MdH has with including more efficient technologies.
require 'spec_helper'

describe "Standard scenario: Metal production" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: 'nl', end_year: 2050,  autobalance: true)
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

      @scenario.dashboard_energy_demand_primary_of_final.should decrease

      puts "When putting industry_steel_hisarna to 1 % should decrease total energy demand"

      # Putting the Smeltoven to 100%
      @scenario.industry_steel_blastfurnace_current_share = 0 #% 
      @scenario.industry_steel_blastfurnace_bat_share = 99 #%
      @scenario.industry_steel_hisarna_share = 1 #%
      pp "HISARNA: dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
      @scenario.dashboard_energy_demand_primary_of_final.should decrease
    end

    it "should decrease the load of the backup burner when putting the hisarna to 1%" do

      # Now put bat to 100 %      
      @scenario.industry_steel_blastfurnace_current_share = 0 #% 
      @scenario.industry_steel_blastfurnace_bat_share = 100 #%
      @scenario.industry_steel_hisarna_share = 0 #%
      pp "BAT to 100% dashboard_energy_demand_primary_of_final: " + @scenario.dashboard_energy_demand_primary_of_final.future.to_s

      # Putting the Smeltoven to 100%
      @scenario.industry_steel_blastfurnace_current_share = 0 #% 
      @scenario.industry_steel_blastfurnace_bat_share = 99 #%
      @scenario.industry_steel_hisarna_share = 1 #%

      @scenario.energy_heat_network_backup_heater_gas_power_fuelmix_demand.should decrease
    end

    it "should not increase dumped heat" do
      @scenario.energy_heat_remainder_from_heat_network_unused_steam_hot_water_demand.value.should == 0
    end

    # it "should give some output" do 
    #   pp "energy_steel_blastfurnace_current_transformation_demand: " + @scenario.energy_steel_blastfurnace_current_transformation_demand.future.to_s
    #   pp "energy_steel_hisarna_transformation_demand: " + @scenario.energy_steel_hisarna_transformation_demand.future.to_s
    #   pp "industry_useful_demand_useable_heat_demand: " + @scenario.industry_useful_demand_useable_heat_demand.future.to_s
    # end
  end
end