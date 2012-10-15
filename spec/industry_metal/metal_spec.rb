# Turk to help solve the issue MdH has with including more efficient technologies.
require 'spec_helper'

describe "Standard scenario: Metal production" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: 'nl', end_year: 2050,  autobalance: true)
  end

  describe "Steel share group:" do
    
    it "Setting industry_steel_blastfurnace_bat_share = 100 % should increase demand" do
      @scenario.industry_steel_blastfurnace_bat_share = 100 #%
      @scenario.industry_steel_blastfurnace_current_share = 0 #% 
      @scenario.industry_steel_hisarna_share = 0 #%
      @scenario.industry_steel_electricfurnace_share = 0 #0

      @scenario.dashboard_energy_demand_primary_of_final.should increase
    end

    it "When putting industry_steel_hisarna to 5 % should decrease total energy demand" do
      # Putting the Smeltoven to 100%
      @scenario.industry_steel_blastfurnace_bat_share = 95 #%
      @scenario.industry_steel_blastfurnace_current_share = 0 #% 
      @scenario.industry_steel_hisarna_share = 5 #%

      # The Cyclone furnace is more efficient, so we would expect the total energy to decrease
      @scenario.dashboard_energy_demand_primary_of_final.should decrease

      # What is the relative change of demand from the 'transformation' options for bat and hisarna?
      pp "energy_steel_blastfurnace_current_transformation_demand: " + @scenario.energy_steel_blastfurnace_current_transformation_demand.future.to_s
      # What is the 
      pp "energy_steel_hisarna_transformation_demand: " + @scenario.energy_steel_hisarna_transformation_demand.future.to_s
      # What is the 
      pp  "industry_useful_demand_useable_heat_demand: " + @scenario.industry_useful_demand_useable_heat_demand.future.to_s
    end
  end
end