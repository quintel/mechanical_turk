# Reported bug on et-model.com by Wouter Meyers on Fri Apr 13, 2012
# as described here: https://github.com/dennisschoenmakers/etmodel/issues/695

require 'spec_helper'

describe "Washing on low temperatures" do

  before(:all) do
    @scenario = Scenario.new(country: "nl", end_year: 2050)
  end

  it "should lower CO2 emissions when washing machine efficiencies increase to max value" do
    @scenario.set_input 361, 86 #%
    @scenario.co2.should decrease
  end

  it "should lower CO2 emissions when more people wash on low temperatures" do
    @scenario.set_input 371, 100 #%
    @scenario.co2.should decrease
  end

end