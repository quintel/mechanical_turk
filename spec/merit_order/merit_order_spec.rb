# Reported bug on et-model.com by Wouter Meyers on Fri Apr 13, 2012
# as described here: https://github.com/dennisschoenmakers/etmodel/issues/695

require 'spec_helper'

describe "merit order module" do

  before(:each) do
    @scenario = Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "for the start scenario" do

    it "the full load hours of the cheapest five power plants should be greater than zero and less than 8760" do
      @scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table.value.should be_within(4379).of(4380)
      @scenario.merit_order_coal_igcc_full_load_hours_in_merit_order_table.value.should be_within(4379).of(4380)
      @scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.value.should be_within(4379).of(4380)
      @scenario.merit_order_coal_chp_full_load_hours_in_merit_order_table.value.should be_within(4379).of(4380)
      @scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.value.should be_within(4379).of(4380)
    end
  end

  context "when removing power plants" do

    it "the full load hours of a power plant should become zero if the number of units becomes zero" do
      @scenario.set_input 257, 0 # number of gas ccgt
      @scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.value.should be == 0.0

      @scenario.set_input 259, 0 # number of nuclear plants
      @scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table.value.should be == 0.0

      @scenario.set_input 250, 0 # number of coal pwd
      @scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.value.should be == 0.0
    end
  end

  context "when adding wind power" do

    it "should lower full load hours of central production power plants" do
      @scenario.set_input 265, 4000 # number of wind offshore turbines
      @scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.should decrease
      @scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table.should decrease
      @scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.should decrease
    end
  end

  context "when fuel costs change" do

    it "should increase full load hours of gas power plants when natural gas price decreases" do
      @scenario.set_input 58, -50 # % decrease of natural gas costs
      @scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.should increase
    #  @scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table.should decrease
    #  @scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.should decrease
    end

    it "should decrease full load hours of coal power plants when coal price increases" do
        @scenario.set_input 57, 300 # % decrease of coal costs
        @scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.should decrease
    end
  end

end