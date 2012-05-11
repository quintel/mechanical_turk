# Reported bug on et-model.com by Wouter Meyers on Fri Apr 13, 2012
# as described here: https://github.com/dennisschoenmakers/etmodel/issues/695

require 'spec_helper'

describe "merit order module" do
  
  before(:each) do 
    @scenario = Scenario.new(country: "nl", end_year: 2050)
  end

  context "when power plant sliders have not been moved" do

    it "should set full load hours to zero if power plant sliders moved to zero" do
      @scenario.set_input 257, 0 #%
      @scenario.co2.should increase

    #  @scenario.set_input 257, 0 # number of gas ccgt
    #  @scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.should decrease

    #  @scenario.set_input 259, 0 # number of nuclear plants
    #  @scenario.result("merit_order_nuclear_iii_full_load_hours_in_merit_order_table").value.should be == 0
      
    #  @scenario.set_input 250, 0 # number of coal pwd
    #  @scenario.result("merit_order_coal_pwd_full_load_hours_in_merit_order_table").value.should be == 0
    end

  end

#  context "when natural gas becomes very cheap, full load hours of power plants should increase" do
#
#    it "should lower gas full load hours if natural gas price increases" do
#      @scenario.set_input , -100  # % price decrease natural gas
#      @scenario.result("merit_order_gas_ccgt_full_load_hours_in_merit_order_table").should increase
#      @scenario.result("merit_order_gas_conv_full_load_hours_in_merit_order_table").should increase
#    end
#  end

end