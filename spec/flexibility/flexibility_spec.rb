# Relevant sliders #661-671

require 'spec_helper'

describe "Flexibility" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1 
    })
  end

  context "P2P (batteries)" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      number_of_energy_power_wind_turbine_inland: 10000 # excess electricity
    })
  end

   describe "In a scenario increasing the number of P2P units" do
    
     it "should decrease the electricity curtailed" do
       @scenario.households_flexibility_p2p_electricity_market_penetration = 20.0
      
       expect(@scenario.electricity_curtailed).to decrease
     end
  
   end

    describe "In a scenario increasing the number of P2P units" do
    
     it "should decrease the electricity exported" do
       @scenario.households_flexibility_p2p_electricity_market_penetration = 20.0
      
       expect(@scenario.electricity_exported).to decrease
     end
  
   end

    describe "In a scenario increasing the number of P2P units" do
    
     it "should decrease CO2 emissions" do
       @scenario.households_flexibility_p2p_electricity_market_penetration = 70.0
      
       expect(@scenario.co2).to decrease
     end
  
    end

  end

  context "P2P (electric cars)" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      number_of_energy_power_wind_turbine_inland: 10000 # excess electricity
    })
  end

   describe "In a scenario increasing the availability of electric cars" do
    
     it "should decrease the electricity curtailed" do
       @scenario.transport_car_using_electricity_availability = 20.0
      
       expect(@scenario.electricity_curtailed).to decrease
     end
  
   end

    describe "In a scenario increasing the availability of electric cars" do
    
     it "should decrease the electricity exported" do
       @scenario.transport_car_using_electricity_availability = 20.0
      
       expect(@scenario.electricity_exported).to decrease
     end
  
   end

    describe "In a scenario increasing the availability of electric cars" do
    
     it "should decrease CO2 emissions" do
       @scenario.transport_car_using_electricity_availability = 20.0
      
       expect(@scenario.co2).to decrease
     end
  
    end

  end

  context "P2H" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      number_of_energy_power_wind_turbine_inland: 10000 # excess electricity
    })
  end

   describe "In a scenario increasing the number of P2H units" do
    
     it "should decrease the electricity curtailed" do
       @scenario.households_flexibility_p2h_electricity_market_penetration = 20.0
      
       expect(@scenario.electricity_curtailed).to decrease
     end
  
   end

    describe "In a scenario increasing the number of P2H units" do
    
     it "should decrease the electricity exported" do
       @scenario.households_flexibility_p2h_electricity_market_penetration = 20.0
      
       expect(@scenario.electricity_exported).to decrease
     end
  
   end

    describe "In a scenario increasing the number of P2H units" do
    
     it "should decrease CO2 emissions" do
       @scenario.households_flexibility_p2h_electricity_market_penetration = 20.0
      
       expect(@scenario.co2).to decrease
     end
  
    end

  end

  context "P2G" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      number_of_energy_power_wind_turbine_inland: 10000, # excess electricity
      transport_car_using_hydrogen_share: 20.0 #making sure there are hydrogen cars
    })
  end

   describe "In a scenario increasing the number of P2G units" do
    
     it "should decrease the electricity curtailed" do
       @scenario.number_of_energy_flexibility_p2g_electricity = 20.0
      
       expect(@scenario.electricity_curtailed).to decrease
     end
  
   end

    describe "In a scenario increasing the number of P2G units" do
    
     it "should decrease the electricity exported" do
       @scenario.number_of_energy_flexibility_p2g_electricity = 20.0
      
       expect(@scenario.electricity_exported).to decrease
     end
  
   end

    describe "In a scenario increasing the number of P2G units" do
    
     it "should decrease CO2 emissions" do
       @scenario.number_of_energy_flexibility_p2g_electricity = 200.0
      
       expect(@scenario.co2).to decrease
     end
  
    end

  end



# Below is WIP for the flexibility order 
# which requires an extension of the ETE ConverterApi



  #context "Flexibility order" do
  #before do
  #  @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
  #    settings_enable_merit_order: 1,
  #    households_flexibility_p2h_electricity_market_penetration: 20.0
  #  })
  #end

   #describe "Putting P2H first in the flexibility options" do

    # it "should decrease the hot water demand" do

       # increasing the amount of LNG that is regasified and fed into the gas grid
       #@scenario.update_flexibility_order = {order: ['p2h', 'p2g']}
    #   FlexibilityOrder.create!(order: ['p2h', 'p2g'])

       # should result in an increase in the number_of_units of regasification converters
     #  expect(@scenario.final_demand_of_heat_in_households).to decrease
     #end
  
   #end

  #end

end
