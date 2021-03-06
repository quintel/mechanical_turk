# Reported bug on et-model.com by Wouter Meyers on Fri Apr 13, 2012
# as described here: https://github.com/dennisschoenmakers/etmodel/issues/695

require 'spec_helper'

describe "#371: Washing on low temperatures" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "when slider 361 (washing machine efficiencies) has not been set" do

    it "should lower CO2 emissions when washing machine efficiencies increase to max value" do
      @scenario.households_behavior_low_temperature_washing = 100 #%
      expect(@scenario.co2).to decrease
    end

  end

  context "when slider 361 (washing machine efficiencies) is on max value" do

    it "should lower CO2 emissions when washing machine efficiencies increase to max value" do
      @scenario.households_appliances_washing_machine_electricity_efficiency = 28 #%
      expect(@scenario.co2).to decrease
      @scenario.households_behavior_low_temperature_washing = 100 #%
      expect(@scenario.co2).to decrease
    end

  end

end

