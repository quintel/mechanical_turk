require 'spec_helper'


describe "Sliders: shares of apartments, terraced houses, etc. " do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "Removing all apartments and insulating them" do

    xit "should leave the cost unchanged" do
      # move slider set 1 (number of apartments)
      @scenario.households_number_of_apartments_before_1945 = 0.0
      @scenario.households_number_of_apartments_1945_1964 = 0.0
      @scenario.households_number_of_apartments_1965_1984 = 0.0
      @scenario.households_number_of_apartments_1985_2004 = 0.0
      @scenario.households_number_of_apartments_2005_present = 0.0

      @scenario.refresh!

      # move slider set 2 (level of insulation in apartments)
      @scenario.households_insulation_level_apartments_before_1945 = 309.2785 * 0.7
      @scenario.households_insulation_level_apartments_1945_1964 = 225.7048 * 0.7
      @scenario.households_insulation_level_apartments_1965_1984 = 193.542 * 0.7
      @scenario.households_insulation_level_apartments_1985_2004 = 154.5946 * 0.7
      @scenario.households_insulation_level_apartments_2005_present = 115.9263 * 0.7

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all detached houses and insulating them" do

    xit "should leave the cost unchanged" do
      # move slider set 1 (number of detached houses)
      @scenario.households_number_of_detached_houses_before_1945 = 0.0
      @scenario.households_number_of_detached_houses_1945_1964 = 0.0
      @scenario.households_number_of_detached_houses_1965_1984 = 0.0
      @scenario.households_number_of_detached_houses_1985_2004 = 0.0
      @scenario.households_number_of_detached_houses_2005_present = 0.0

      @scenario.refresh!

      # move slider set 2 (level of insulation in detached houses)
      @scenario.households_insulation_level_detached_houses_before_1945 = 296.1239 * 0.7
      @scenario.households_insulation_level_detached_houses_1945_1964 = 243.2537 * 0.7
      @scenario.households_insulation_level_detached_houses_1965_1984 = 202.5222 * 0.7
      @scenario.households_insulation_level_detached_houses_1985_2004 = 160.3984 * 0.7
      @scenario.households_insulation_level_detached_houses_2005_present = 116.3707 * 0.7

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all semi-detached houses and insulating them" do

    xit "should leave the cost unchanged" do
      # move slider set 1 (number of semi-detached houses)
      @scenario.households_number_of_semi_detached_houses_before_1945 = 0.0
      @scenario.households_number_of_semi_detached_houses_1945_1964 = 0.0
      @scenario.households_number_of_semi_detached_houses_1965_1984 = 0.0
      @scenario.households_number_of_semi_detached_houses_1985_2004 = 0.0
      @scenario.households_number_of_semi_detached_houses_2005_present = 0.0

      @scenario.refresh!

      # move slider set 2 (level of insulation in semi-detached houses)
      @scenario.households_insulation_level_semi_detached_houses_before_1945 = 268.9665 * 0.7
      @scenario.households_insulation_level_semi_detached_houses_1945_1964 = 217.0396 * 0.7
      @scenario.households_insulation_level_semi_detached_houses_1965_1984 = 187.3579 * 0.7
      @scenario.households_insulation_level_semi_detached_houses_1985_2004 = 154.0974 * 0.7
      @scenario.households_insulation_level_semi_detached_houses_2005_present = 114.2388 * 0.7

      @scenario.costs.increase.should == 0

    end

  end

  context "Removing all terraced houses and insulating them" do

    xit "should leave the cost unchanged" do
      # move slider set 1 (number of terraced houses)
      @scenario.households_number_of_terraced_houses_before_1945 = 0.0
      @scenario.households_number_of_terraced_houses_1945_1964 = 0.0
      @scenario.households_number_of_terraced_houses_1965_1984 = 0.0
      @scenario.households_number_of_terraced_houses_1985_2004 = 0.0
      @scenario.households_number_of_terraced_houses_2005_present = 0.0

      @scenario.refresh!

      # move slider set 2 (level of insulation in semi-detached houses)
      @scenario.households_insulation_level_terraced_houses_before_1945 = 305.0056 * 0.7
      @scenario.households_insulation_level_terraced_houses_1945_1964 = 280.6464 * 0.7
      @scenario.households_insulation_level_terraced_houses_1965_1984 = 217.9607 * 0.7
      @scenario.households_insulation_level_terraced_houses_1985_2004 = 150.8078 * 0.7
      @scenario.households_insulation_level_terraced_houses_2005_present = 116.2858 * 0.7

      @scenario.costs.increase.should == 0

    end

  end

  context "Halving the number of residences" do

    xit "should halve the heat demand for all housing types" do
      # move slider
      @scenario.households_number_of_apartments_before_1945 = 516342 * 0.5
      @scenario.households_number_of_apartments_1945_1964 = 371806 * 0.5
      @scenario.households_number_of_apartments_1965_1984 = 729999 * 0.5
      @scenario.households_number_of_apartments_1985_2004 = 591948 * 0.5
      @scenario.households_number_of_apartments_2005_present = 466180 * 0.5
      @scenario.households_number_of_detached_houses_before_1945 = 178650 * 0.5
      @scenario.households_number_of_detached_houses_1945_1964 = 175973 * 0.5
      @scenario.households_number_of_detached_houses_1965_1984 = 333220 * 0.5
      @scenario.households_number_of_detached_houses_1985_2004 = 223668 * 0.5
      @scenario.households_number_of_detached_houses_2005_present = 105276 * 0.5
      @scenario.households_number_of_semi_detached_houses_before_1945 = 237409 * 0.5
      @scenario.households_number_of_semi_detached_houses_1945_1964 = 214301 * 0.5
      @scenario.households_number_of_semi_detached_houses_1965_1984 = 606264 * 0.5
      @scenario.households_number_of_semi_detached_houses_1985_2004 = 416081 * 0.5
      @scenario.households_number_of_semi_detached_houses_2005_present = 173292 * 0.5
      @scenario.households_number_of_terraced_houses_before_1945 = 622120 * 0.5
      @scenario.households_number_of_terraced_houses_1945_1964 = 312200 * 0.5
      @scenario.households_number_of_terraced_houses_1965_1984 = 504251 * 0.5
      @scenario.households_number_of_terraced_houses_1985_2004 = 550888 * 0.5
      @scenario.households_number_of_terraced_houses_2005_present = 258096 * 0.5

      expect(@scenario.households_apartments_useful_demand_for_space_heating.value).to be_within(1000.0).of(46896875253.5571)
      expect(@scenario.households_detached_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(30193624312.9506)
      expect(@scenario.households_semi_detached_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(41186001795.5793)
      expect(@scenario.households_terraced_houses_useful_demand_for_space_heating.value).to be_within(1000.0).of(18192325710.2462)

    end

  end


  context "Doubling the number of residences" do

    xit "should double the residential roof surface available for pv" do
      # move slider to the doubled number of residences
      @scenario.households_number_of_apartments_future = 2676275.0
      @scenario.households_number_of_detached_houses_future = 1016787.0
      @scenario.households_number_of_semi_detached_houses_future = 1647347.0
      @scenario.households_number_of_terraced_houses_future = 2247555.0

      expect(@scenario.turk_roof_surface_available_pv.value).to be_within(1.0).of 290.6

    end

  end

end
