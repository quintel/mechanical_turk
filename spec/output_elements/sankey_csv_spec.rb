# frozen_string_literal: true

require 'spec_helper'


describe 'Primary Demand' do
  Turk::PresetCollection.from_keys(:ii3050v2,:ip2024).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether electricity in the sankey download is balanced
      #it "checks the turk_sankey_electricity" do
       #expected_value = 0.0 # Define your expected value here
      
        # Assuming scenario.turk_sankey_electricity returns a Result object with a .value method returning a Float
        #actual_result = scenario.turk_sankey_electricity
        #actual_value = actual_result.value # Get the actual numeric value
      
        #puts "Actual value: #{actual_value}, Expected range: #{expected_value - 1.0E-10} to #{expected_value + 1.0E-10}"
      
        #expect(actual_result).to sankey_softly_equal(expected_value) # Pass the entire object if the matcher handles the extraction
      #end
      
        # Test whether biomass in the sankey download is balanced
      #it "checks the turk_sankey_biomass" do
        #expected_value = 0.0 # Define your expected value here
          
            # Assuming scenario.turk_sankey_electricity returns a Result object with a .value method returning a Float
        #actual_result = scenario.turk_sankey_biomass
        #actual_value = actual_result.value # Get the actual numeric value
          
        #puts "Actual value: #{actual_value}, Expected range: #{expected_value - 1.0E-10} to #{expected_value + 1.0E-10}"
          
        #expect(actual_result).to sankey_softly_equal(expected_value) # Pass the entire object if the matcher handles the extraction
      #end
          
      # Test whether hydrogen in the sankey download is balanced
      #it "checks the turk_sankey_hydrogen" do
       # expected_value = 0.0 # Define your expected value here
      
        # Assuming scenario.turk_sankey_hydrogen returns a Result object with a .value method returning a Float
        #actual_result = scenario.turk_sankey_hydrogen
        #actual_value = actual_result.value # Get the actual numeric value
      
        #puts "Actual value: #{actual_value}, Expected range: #{expected_value - 1.0E-10} to #{expected_value + 1.0E-10}"
      
        #expect(actual_result).to sankey_softly_equal(expected_value) # Pass the entire object if the matcher handles the extraction
      #end
      
      it "checks the turk_sankey_natural_gas" do
        expected_value = 0.0 # Define your expected value here
      
        # Assuming scenario.turk_sankey_natural_gas returns a Result object with a .value method returning a Float
        actual_result = scenario.turk_sankey_natural_gas
        actual_value = actual_result.value # Get the actual numeric value
      
        puts "Actual value: #{actual_value}, Expected range: #{expected_value - 1.0E-10} to #{expected_value + 1.0E-10}"
      
        expect(actual_result).to sankey_softly_equal(expected_value) # Pass the entire object if the matcher handles the extraction
      end
      
      # Test whether steam hot water in the sankey download is balanced
      #it "checks the turk_sankey_steam_hot_water" do
       # expected_value = 0.0 # Define your expected value here
      
        # Assuming scenario.turk_sankey_electricity returns a Result object with a .value method returning a Float
        #actual_result = scenario.turk_sankey_steam_hot_water
        #ctual_value = actual_result.value # Get the actual numeric value
      
        #puts "Actual value: #{actual_value}, Expected range: #{expected_value - 1.0*10E-10} to #{expected_value + 1.0*10E-10}"
      
        #expect(actual_result).to sankey_softly_equal(expected_value) # Pass the entire object if the matcher handles the extraction
      #end
      #it "checks the turk_sankey_oil" do
       # expected_value = 0.0 # Define your expected value here
      
       #  Assuming scenario.turk_sankey_oil returns a Result object with a .value method returning a Float
        #actual_result = scenario.turk_sankey_oil
        #actual_value = actual_result.value # Get the actual numeric value
      
        #puts "Actual value: #{actual_value}, Expected range: #{expected_value - 1.0E-10} to #{expected_value + 1.0E-10}"
      
        #expect(actual_result).to sankey_softly_equal(expected_value) # Pass the entire object if the matcher handles the extraction
      #end 
    end
  end
end
