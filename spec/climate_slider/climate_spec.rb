#
require 'spec_helper'

describe "Testing climate slider" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: false)
  end

  context "Testing impact on heat demand of residences" do

    it "it should decrease heat demand if climate slider is pulled to max" do
      demand_before_update = @scenario.households_apartments_useful_demand_for_space_heating.future
      #pp demand_before_update

      @scenario.households_climate_influence = 5.0 # degrees centigrade

      demand_after_update = @scenario.households_apartments_useful_demand_for_space_heating.future
      #pp demand_after_update
      #pp demand_after_update / demand_before_update

      @scenario.households_apartments_useful_demand_for_space_heating.should decrease
      @scenario.buildings_useful_demand_for_space_heating.should decrease
    end

    it "it should increase heat demand if climate slider is pulled to min" do
      demand_before_update = @scenario.households_apartments_useful_demand_for_space_heating.future
      #pp demand_before_update

      @scenario.households_climate_influence = -5.0 # degrees centigrade

      demand_after_update = @scenario.households_apartments_useful_demand_for_space_heating.future
      #pp demand_after_update
      #pp demand_after_update / demand_before_update

      @scenario.households_apartments_useful_demand_for_space_heating.should increase
      @scenario.buildings_useful_demand_for_space_heating.should increase
    end

    it "it should increase cooling demand if climate slider is pulled to max" do
      demand_before_update = @scenario.households_useful_demand_for_cooling.future
      #pp demand_before_update

      @scenario.households_climate_influence = 5.0 # degrees centigrade

      demand_after_update = @scenario.households_useful_demand_for_cooling.future
      #pp demand_after_update
      #pp demand_after_update / demand_before_update

      @scenario.households_useful_demand_for_cooling.should increase
      @scenario.buildings_useful_demand_cooling.should increase
    end

    it "it should decrease cooling demand if climate slider is pulled to min" do
      demand_before_update =  @scenario.households_useful_demand_for_cooling.future
      #pp demand_before_update

      @scenario.households_climate_influence = -5.0 # degrees centigrade

      demand_after_update = @scenario.households_useful_demand_for_cooling.future
      #pp demand_after_update
      #pp demand_after_update / demand_before_update

      @scenario.households_useful_demand_for_cooling.should decrease
      @scenario.buildings_useful_demand_cooling.should decrease
    end
  end
end