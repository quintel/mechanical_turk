# This Rspec test verifies basic behavior of the Cost of FTE dashaboard item.
require 'spec_helper'

describe "Cost of employment dashboard item" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true)
  end

  context "If employment delta is zero, dashboard should return zero" do

    it "should not give an error if present scenario == future scenario" do
      expect(@scenario.dashboard_employment).to not_change
    end
  end

  context "If a technology is cheap but is job-intensive..." do

    it "should increase when using more wood-pellet stoves" do
      @scenario.households_space_heater_wood_pellets_share = 100 #%
      # # binding.pry
      expect(@scenario.dashboard_employment).to increase

    end
  end

  context "If a technology is expensive but not job-intensive..." do

    it "should decrease when using more micro CHPs" do
      @scenario.households_space_heater_micro_chp_network_gas_share = 50 #%
      expect(@scenario.dashboard_employment).to decrease
    end
  end

end
