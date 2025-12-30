# Biomass Sankey balance tests
# Tests the new biomass sankey structure with:
# - Column 0: greengas_primary and biogas (inputs)
# - Column 2: greengas_secondary (intermediate node)
# - Column 3: Various demand sectors and conversion processes (outputs)

require 'spec_helper'

RSpec.describe 'Biomass' do
  $preset_collections.each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      it 'results in all input flows (column 0) equaling all output flows (column 3) of the biomass sankey' do
        expect(
          scenario.turk_total_input_in_biomass_sankey
        ).to softly_equal(scenario.turk_total_output_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the greengas_secondary node in the biomass sankey' do
        expect(
          scenario.turk_input_of_greengas_secondary_in_biomass_sankey
        ).to softly_equal(scenario.turk_output_of_greengas_secondary_in_biomass_sankey)
      end
    end
  end
end
