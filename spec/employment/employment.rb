# 

require 'spec_helper'

describe "Households, Space Heating" do

  before(:each) do 
    @scenario = Scenario.new(country: "nl", end_year: 2050)
  end

  context "for the start scenario" do
    
    # For every space heating technology, the number_of_units should go to #HHs when slider = 100%
    it "number of households_space_heater_collective_heatpump_water_water_ts_electricity should be #HHs (7349500.0/150=48996.66)" do
      @scenario.set_input 375, 100 #%
      @scenario.number_of_households_space_heater_collective_heatpump_water_water_ts_electricity.value.should be_within(10.0).of(48996.66)
    end
    
    it "number of households_space_heater_combined_network_gas should be #HHs (7349500.0)" do
      @scenario.set_input 333, 100 #%
      @scenario.number_of_households_space_heater_combined_network_gas.value.should be_within(10.0).of(7349500.0)
    end
    
    it "number of households_space_heater_heatpump_ground_water_electricity should be #HHs (7349500.0)" do
      @scenario.set_input 338, 100 #%
      @scenario.number_of_households_space_heater_heatpump_ground_water_electricity.value.should be_within(10.0).of(7349500.0)
    end
    
    it "number of households_space_heater_wood_pellets should be #HHs (7349500.0)" do
      @scenario.set_input 340, 100 #%
      @scenario.number_of_households_space_heater_wood_pellets.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_coal should be #HHs (7349500.0)" do
      @scenario.set_input 411, 100 #%
      @scenario.number_of_households_space_heater_coal.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_crude_oil should be #HHs (7349500.0)" do
      @scenario.set_input 248, 100 #%
      @scenario.number_of_households_space_heater_crude_oil.value.should be_within(10.0).of(7349500.0)
    end
 
    it "number of households_space_heater_heatpump_air_water_network_gas should be #HHs (7349500.0/150=48996.66)" do
      @scenario.set_input 317, 100 #%
      @scenario.number_of_households_space_heater_heatpump_air_water_network_gas.value.should be_within(10.0).of(48996.66)
    end

    it "number of households_space_heater_micro_chp_network_gas should be #HHs (7349500.0)" do
      @scenario.set_input 51, 100 #%
      @scenario.number_of_households_space_heater_micro_chp_network_gas.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_network_gas should be #HHs (7349500.0)" do
      @scenario.set_input 441, 100 #%
      @scenario.number_of_households_space_heater_network_gas.value.should be_within(10.0).of(7349500.0)
    end

    it "number of households_space_heater_electricity should be #HHs (7349500.0)" do
      @scenario.set_input 52, 100 #%
      @scenario.number_of_households_space_heater_electricity.value.should be_within(100.0).of(7349500.0)
    end   
    
    # The overall employment should change with different sliders
    it "should decrease employment when the Electric heater is pulled to max" do
      @scenario.set_input 52, 100 #%
      @scenario.dashboard_employment.should decrease
    end
    
    
    it "should decrease employment when the Electric heater is pulled to max" do
      @scenario.set_input 52, 100 #%
      @scenario.dashboard_employment.should decrease
    end
    
  end

end