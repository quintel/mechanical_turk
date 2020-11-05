# Relevant sliders #673-691

require 'spec_helper'

describe "LNG" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
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
