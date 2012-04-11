# Example Spec that would apply for all countries
# Created by Dennis Schoenmakers, April 1th 2012
# For testing out first version of the Turk

require 'spec_helper'

describe "Start Situation" do

  before(:all) do
    @scenario = Scenario.new(country: "nl", end_year: 2040)
  end

  it "CO2 emissions should be bigger than 0" do
    @scenario.result("total_co2_emissions").value.should > 0
  end

end
