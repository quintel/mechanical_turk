require 'spec_helper'

describe 'Testing number of residences' do
  Turk::PresetCollection.from_keys(:ii3050v2, :kev, :scenario_collection).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      it 'Nr. of new residences (as an input) should match the number of new residences (as an output)' do
        expect(
          scenario.turk_number_of_residences_new_input
        ).to softly_equal(scenario.turk_number_of_residences_future)
      end
    end
  end
end
