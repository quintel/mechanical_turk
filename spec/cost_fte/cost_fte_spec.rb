# This Rspec test verifies basic behavior of the Cost of FTE dashaboard item.
require 'spec_helper'

describe "Cost of FTE dashboard item" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  context "If employment delta is zero, dashboard should return zero" do

    it "should not give an error if present scenario == future scenario" do
      expect(@scenario.dashboard_cost_fte).to not_change
    end
  end

  context "If a technology is cheap but is job-intensive..." do

    it "should increase when using more solar panels" do
      @scenario.households_market_penetration_solar_panels = 100 #%
      # # binding.pry
      expect(@scenario.dashboard_cost_fte).to increase

    end
  end

  context "If a technology is expensive but not job-intensive..." do

    it "should decrease when using more micro CHPs" do
      @scenario.households_heating_micro_chp_share = 50 #%
      expect(@scenario.dashboard_cost_fte).to decrease
    end
  end

end
