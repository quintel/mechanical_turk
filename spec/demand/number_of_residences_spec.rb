require 'spec_helper'


describe "Sliders: shares of apartments, terraced houses, etc. " do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "Removing all apartments and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_apartments_share = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_apartments = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all corner houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of new houses in millions)
      @scenario.households_corner_houses_share = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of new houses)
      @scenario.households_insulation_level_corner_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all detached houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_detached_houses_share = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_detached_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all semi-detached houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_semi_detached_houses_share = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_semi_detached_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all terraced houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_terraced_houses_share = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_terraced_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Halving the number of residences" do

    it "should halve the heat demand for all housing types" do
      # move slider
      @scenario.households_number_of_residences = 7587964 * 0.5

      expect(@scenario.households_apartments_useful_demand_for_space_heating.value).to be_within(1000.0).of(31605972206.063)
      expect(@scenario.households_corner_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(19706344274.641)
      expect(@scenario.households_detached_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(31588698092.612)
      expect(@scenario.households_semi_detached_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(15657553786.248)
      expect(@scenario.households_terraced_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(37594474676.336)

    end

  end


  context "Doubling the number of residences" do

    it "should double the residential roof surface available for pv" do
      # move slider to the doubled number of residences
      @scenario.households_number_of_residences = 7587964 * 2

      expect(@scenario.turk_roof_surface_available_pv.value).to be_within(1.0).of 290.6

    end

  end

end
