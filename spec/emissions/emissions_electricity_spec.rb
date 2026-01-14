
require 'spec_helper'

describe 'Electricity emissions' do
  Turk::PresetCollection.from_keys(:ii3050v2, :kev, :scenario_collection).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Motivation for spec described in issue https://github.com/quintel/mechanical_turk/issues/152
      it 'Emissions of total electricity production should match sum of emissions queries used
          in co2_of_electricity_production chart.' do
          expect(
            scenario.turk_co2_emissions_of_electricity_categories
          ).to softly_equal(
            scenario.turk_co2_emissions_of_electricity_total
          )
      end

      it 'Emissions of total electricity production based on group should equal the total emisisons
          based on domestic merit producers.' do
          expect(
            scenario.turk_co2_emissions_of_merit_producers
          ).to softly_equal(
            scenario.turk_co2_emissions_of_electricity_total
          )
      end
    end
  end
end
