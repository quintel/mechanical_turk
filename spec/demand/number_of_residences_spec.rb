# Example Spec that would apply for all countries
# Inspired on the issue with the number of residences
# Relevant slider #639 and #640
# Chart 57

require 'spec_helper'

describe "The sum of the number of old and new residences" do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)

    # move slider 1 (number of old houses in millions)
    @scenario.households_number_of_old_houses = 2.9

    # move slider 2 (number of new houses in millions)
    @scenario.households_number_of_new_houses = 4.7

  end

  it "should be equal to the total number of residences" do
    expect(@scenario.households_number_of_residences.value).to be == 7.600001
  end


end



describe "Halving the number of old and new residences" do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)

    # move slider 1 (number of old houses in millions)
    @scenario.households_number_of_old_houses = 3.2

    # move slider 2 (number of new houses in millions)
    @scenario.households_number_of_new_houses = 0.5

    #pp heat_demand_future = @scenario.households_new_houses_useful_demand_for_heating.future

  end

  it "halve the heat demand for residences" do
    expect(@scenario.households_new_houses_useful_demand_for_heating.value).to be == 14184587997.518246 
  end

end



describe "Doubling the number of residences" do

  before(:all) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)

    # move slider 1 (number of new houses in millions)
    @scenario.households_number_of_new_houses = 7.3

    #pp @scenario.turk_roof_surface_available_pv.future
    
  end

  it "double the residential roof surface available for pv" do
    expect(@scenario.turk_roof_surface_available_pv.value).to be == 494.20457720797333
  end

end