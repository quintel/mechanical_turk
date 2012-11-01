#
require 'spec_helper'

describe "Testing climate slider" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: false)
  end

  context "Testing impact on heat demand of residences" do

    xit "it should decrease heat demand if climate slider is pulled to max" do
      demand_before_update = @scenario.households_new_houses_useful_demand_for_heating.future
      pp demand_before_update

      @scenario.households_climate_influence = 5.0 # degrees centigrade

      demand_after_update = @scenario.households_new_houses_useful_demand_for_heating.future
      pp demand_after_update
      pp demand_after_update / demand_before_update

      @scenario.households_new_houses_useful_demand_for_heating.should decrease
      @scenario.households_old_houses_useful_demand_for_heating.should decrease
    end

    xit "it should increase heat demand if climate slider is pulled to min" do
      demand_before_update = @scenario.households_new_houses_useful_demand_for_heating.future
      pp demand_before_update

      @scenario.households_climate_influence = -5.0 # degrees centigrade

      demand_after_update = @scenario.households_new_houses_useful_demand_for_heating.future
      pp demand_after_update
      pp demand_after_update / demand_before_update

      @scenario.households_new_houses_useful_demand_for_heating.should increase
      @scenario.households_old_houses_useful_demand_for_heating.should increase
    end

    xit "it should increase cooling demand if climate slider is pulled to max" do
      demand_before_update = @scenario.households_new_houses_useful_demand_for_cooling.future
      pp demand_before_update

      @scenario.households_climate_influence = 5.0 # degrees centigrade

      demand_after_update = @scenario.households_new_houses_useful_demand_for_cooling.future
      pp demand_after_update
      pp demand_after_update / demand_before_update

      @scenario.households_new_houses_useful_demand_for_cooling.should increase
      @scenario.households_old_houses_useful_demand_for_cooling.should increase
    end

    xit "it should decrease cooling demand if climate slider is pulled to min" do
      demand_before_update =  @scenario.households_new_houses_useful_demand_for_cooling.future
      pp demand_before_update

      @scenario.households_climate_influence = -5.0 # degrees centigrade

      demand_after_update = @scenario.households_new_houses_useful_demand_for_cooling.future
      pp demand_after_update
      pp demand_after_update / demand_before_update

      @scenario.households_new_houses_useful_demand_for_cooling.should decrease
      @scenario.households_old_houses_useful_demand_for_cooling.should decrease
    end

  end
end