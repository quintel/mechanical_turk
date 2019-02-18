require 'spec_helper'


describe "Sliders: number of apartments, terraced houses, etc. " do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "The sum of the number of all housing types" do

    it "should be equal to the total number of residences" do

      # move slider 1
      @scenario.households_number_of_apartments = 2.7E6
      # move slider 2
      @scenario.households_number_of_corner_houses = 1.0E6
      # move slider 3
      @scenario.households_number_of_detached_houses = 1.0E6
      # move slider 4
      @scenario.households_number_of_semi_detached_houses = 0.7E6
      # move slider 5
      @scenario.households_number_of_terraced_houses = 2.2E6

      expect(@scenario.households_number_of_residences.value).to be == 7.6E6

    end

  end

  context "Removing all apartments and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_number_of_apartments = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_apartments = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all corner houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of new houses in millions)
      @scenario.households_number_of_corner_houses = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of new houses)
      @scenario.households_insulation_level_corner_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all detached houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_number_of_detached_houses = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_detached_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all semi-detached houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_number_of_semi_detached_houses = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_semi_detached_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all terraced houses and insulating them" do

    it "should leave the cost unchanged" do
      # move slider 1 (number of old houses in millions)
      @scenario.households_number_of_terraced_houses = 0.0

      @scenario.refresh!

      # move slider 2 (insulation of old houses)
      @scenario.households_insulation_level_terraced_houses = 65.0

      @scenario.costs.increase.should == 0

    end

  end

  context "Halving the number of apartments" do

    it "should halve the heat demand for apartments" do
      # move slider
      @scenario.households_number_of_apartments = 1338137.45

      expect(@scenario.households_apartments_useful_demand_for_space_heating.value).to be_within(1000.0).of(31605972206.0626)

    end

  end

  context "Halving the number of corner houses" do

    it "should halve the heat demand for corner houses" do
      # move slider
      @scenario.households_number_of_corner_houses = 490182.4744

      expect(@scenario.households_corner_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(19706344274.6407)

    end

  end

  context "Halving the number of detached houses" do

    it "should halve the heat demand for detached houses" do
      # move slider
      @scenario.households_number_of_detached_houses = 508393.588

      expect(@scenario.households_detached_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(31588698092.612)

    end

  end

  context "Halving the number of semi-detached houses" do

    it "should halve the heat demand for semi-detached houses" do
      # move slider
      @scenario.households_number_of_semi_detached_houses = 333491.0178

      expect(@scenario.households_semi_detached_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(15657553786.2478)

    end

  end

  context "Halving the number of terraced houses" do

    it "should halve the heat demand for terraced houses" do
      # move slider
      @scenario.households_number_of_terraced_houses = 1123777.4684

      expect(@scenario.households_terraced_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(37594474676.3359)

    end

  end

  context "Doubling the number of residences" do

    it "should double the residential roof surface available for pv" do
      # move sliders to the doubled number of houses
      @scenario.households_number_of_apartments = 5352549.8056
      @scenario.households_number_of_corner_houses = 1960729.8976
      @scenario.households_number_of_detached_houses = 2033574.352
      @scenario.households_number_of_semi_detached_houses = 1333964.0712
      @scenario.households_number_of_terraced_houses = 4495109.8736

      expect(@scenario.turk_roof_surface_available_pv.value).to be_within(1.0).of 290.6

    end

  end

end
