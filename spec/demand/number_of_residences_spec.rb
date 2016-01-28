# Relevant slider #639 and #640
# Chart 57

require 'spec_helper'

describe "Sliders #639 and #640: number of old and new residences" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "The sum of the number of old and new residences" do

    it "should be equal to the total number of residences" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_number_of_old_houses = 2.9
      # move slider 2 (number of new houses in millions)
      @scenario.households_number_of_new_houses = 4.7

      expect(@scenario.households_number_of_residences.value).to be == 7600001.0
  
    end

  end

  context "Removing all old residences and insulating them" do
    
    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_number_of_old_houses = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_old_houses = 2.5

      @scenario.costs.increase.should == 0
  
    end
  
  end

  context "Removing all new residences and insulating them" do
    
    it "should leave the cost unchanged" do
      # move slider 1 (number of new houses in millions)
      @scenario.households_number_of_new_houses = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of new houses)
      @scenario.households_insulation_level_new_houses = 2.5

      @scenario.costs.increase.should == 0
  
    end
  
  end

  context "Halving the number of old residences" do
    
    it "should halve the heat demand for old residences" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_number_of_old_houses = 2.9
      
      expect(@scenario.households_old_houses_useful_demand_for_heating.value).to be_within(1000000.0).of(145530009214.27292)
  
    end
  
  end

  context "Halving the number of new residences" do
    
    it "should halve the heat demand for new residences" do
      # move slider 2 (number of new houses in millions)
      @scenario.households_number_of_new_houses = 0.8
      
      expect(@scenario.households_new_houses_useful_demand_for_heating.value).to be_within(1000000.0).of(11151724446.577408)
  
    end
  
  end

  context "Doubling the number of residences" do

    it "should double the residential roof surface available for pv" do
      # move slider 1 (number of new houses in millions)
      @scenario.households_number_of_new_houses = 8.4
    
      expect(@scenario.turk_roof_surface_available_pv.value).to be_within(1.0).of 276.74172571026156
    
    end

  end

end