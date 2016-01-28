# Relevant sliders #696-702

require 'spec_helper'

describe "Hydrogen" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      energy_steam_methane_reformer_hydrogen_share: 100.0 #making sure there are SMRs
    })
  end

  describe "If the hydrogen demand in transport increases" do

    it "the production technologies number_of_units increase" do
      
      #if we increase the share of hydrogen cars
      @scenario.transport_car_using_hydrogen_share = 40.0

      # the number_of_units should increase for the SMR and compressor converters
      # (and the hydrogen car as well, but this will be added later)
      expect(@scenario.turk_steam_methane_reformer_hydrogen_number).to increase
      expect(@scenario.turk_hydrogen_compressor_number).to increase
    end
  
  end



end
