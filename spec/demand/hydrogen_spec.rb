# Relevant sliders #696-702

require 'spec_helper'

describe "Hydrogen" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  describe "In the present" do

    it "there is no hydrogen flow" do
      
      @scenario.energy_steam_methane_reformer_hydrogen_share = 4.0
      @scenario.energy_steam_methane_reformer_ccs_hydrogen_share = 22.0
      @scenario.energy_local_electrolysis_hydrogen_share = 74.0

      # should give us the same demand for the compressor
      expect(@scenario.turk_transport_car_using_hydrogen_demand.increase).to be == 0.0
      expect(@scenario.turk_hydrogen_compressor_demand.increase).to be == 0.0
    end
  
  end



  describe "Changing the hydrogen production pathways" do
    
    it "should change shares by the correct amount" do
      # making sure there is a flow of hydrogen
  #    @scenario.transport_car_using_hydrogen_share = 20.0
      
      # should give us the initial input shares
   #   expect(@scenario.turk_hhp_network_gas_input_share.increase).to be == 0.0
    #  expect(@scenario.turk_hhp_electricity_input_share.increase).to be == 0.0
      # we expect a zero change, but due to the COP being defined in excel and exported to ETSource
      # and then reconstructed in the input statement we observe a very small deviation
     # expect(@scenario.turk_hhp_ambient_heat_input_share.increase).to be < 1.0E-12
    end
  
  end


  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      transport_car_using_hydrogen_share: 30.0  
    })
  end

  describe "Changing the hydrogen production pathways" do

    it "should not change the demand of the compressor" do
      # making sure there is a flow of hydrogen
      @scenario.energy_steam_methane_reformer_hydrogen_share = 79.0
      @scenario.energy_steam_methane_reformer_ccs_hydrogen_share = 2.0
      @scenario.energy_local_electrolysis_hydrogen_share = 19.0
      # should give us the same demand for the compressor
      expect(@scenario.turk_hydrogen_compressor_demand.increase).to be == 0.0
    end
  
  end

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      transport_car_using_hydrogen_share: 30.0,
      energy_local_electrolysis_hydrogen_share: 75.0
    })
  end

  describe "Making electricity greener in a scenario with electrolysis" do

    it "should decrease CO2 emissions" do
      
      @scenario.number_of_energy_power_wind_turbine_coastal = 1000.0

      expect(@scenario.co2).to decrease
    end
  
  end

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      transport_car_using_hydrogen_share: 80.0,
      energy_steam_methane_reformer_hydrogen_share: 75.0
    })
  end

  describe "Making the gas grid composition greener in a scenario with SMR" do

    it "should decrease CO2 emissions" do
      
      @scenario.natural_gas_total_share = 50.0

      expect(@scenario.co2).to decrease
    end
  
  end

end
