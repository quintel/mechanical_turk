# Reported bug on et-model.com by Wouter Meyers on Fri Apr 13, 2012
# as described here: https://github.com/dennisschoenmakers/etmodel/issues/695

require 'spec_helper'

describe "merit order module" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "testing breakpoint system" do
    it "should increase full load hours of gas power plants when natural gas price decreases" do
      @scenario.number_of_wind_onshore_land = 150
      @scenario.merit_order_wind_turbines_full_load_hours_in_merit_order_table.increase.should be_within(20.0).of(150)
      @scenario.merit_order_wind_turbines_capacity_in_merit_order_table.decrease.should be_within(20).of(600)
      @scenario.total_electricity_produced.decrease.should be_within(100_000).of(5_670_000_000)

      @scenario.number_of_wind_onshore_land = 50
      @scenario.merit_order_wind_turbines_full_load_hours_in_merit_order_table.increase.should be_within(20.0).of(190)
      @scenario.merit_order_wind_turbines_capacity_in_merit_order_table.decrease.should be_within(20.0).of(290)
      @scenario.total_electricity_produced.decrease.should be_within(100_000).of(2_700_000_000)
    end
  end

end