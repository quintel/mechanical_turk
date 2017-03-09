# Relevant sliders #673-691

require 'spec_helper'

describe "LNG" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "Scenarios which start with 100% LNG regasification" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      energy_regasification_lng_share: 100.0 
    })
  end

   describe "In a scenario in which all natural gas is regasified LNG" do
    
     it "changing the pipeline natural gas FCE shouldn't change CO2 emissions" do
       # Importing all LNG from Norway
       @scenario.gas_from_norway_share = 100.0
      
       # shouldn't change anything if no LNG is imported at all
       expect(@scenario.co2.increase).to be == 0
     end
  
   end

   describe "In a scenario in which all natural gas is regasified LNG" do
    
     xit "importing all LNG from Qatar should increase CO2 emissions" do
       # Importing all LNG from Qatar (highest co2_per_mj attributes)
       @scenario.lng_from_qatar_share = 100.0
      
       # should increase CO2 emissions in transport and in total
       expect(@scenario.co2).to increase
       expect(@scenario.primary_co2_of_natural_gas_and_derivatives_in_transport).to increase
     end
  
   end

  end

  context "Scenarios which start with 0% LNG regasification" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      energy_treatment_natural_gas_share: 100.0,
      transport_shipping_mixer_diesel_bio_lng_share: 100.0,
      transport_shipping_mixer_lng_bio_lng_share: 0.0,
      transport_road_mixer_lng_bio_lng_share: 100.0
    })
  end

   describe "In a scenario without an LNG energy flow" do

     it "changing the LNG FCEs shouldn't change CO2 emissions" do
       #if there is no LNG flow but there is bio LNG in transport, changing the FCEs
       @scenario.lng_from_algeria_share = 100.0
      
       # shouldn't change the co2 emissions (since bio LNG shouldn't be affected either)
       expect(@scenario.co2.increase).to be == 0
     end
  
   end

   describe "In a scenario in which more LNG is regasified" do

     it "the number_of_units of regasification converters should increase" do

       # increasing the amount of LNG that is regasified and fed into the gas grid
       @scenario.energy_treatment_natural_gas_share = 80.0
       @scenario.energy_regasification_lng_share = 20.0
      
       # should result in an increase in the number_of_units of regasification converters
       expect(@scenario.turk_regasification_lng_number).to increase
     end
  
   end

  end

end
