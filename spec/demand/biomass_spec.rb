# Biomass Sankey balance tests
# Tests the biomass sankey structure with:
# - Column 0: 15 input nodes (greengas_primary, biogas, wood_pellets, torrefied_biomass_pellets,
#             biogenic_waste, bio_kerosene_primary, biodiesel_primary, bionaphtha_primary,
#             bio_ethanol, biomethanol_primary, bio_pyrolysis_oil_primary, bio_lng, bio_oil, hydrogen, heat)
# - Column 1: 3 intermediate nodes (industry_transformation, biomethanol_secondary, bio_pyrolysis_oil_secondary)
#             Note: industry_transformation is NOT balanced (inputs != outputs by design)
# - Column 2: 4 intermediate nodes (greengas_secondary, bio_kerosene_secondary,
#             biodiesel_secondary, bionaphtha_secondary)
# - Column 3: 13 output nodes (households, buildings, transport, bunkers, industry, agriculture,
#             energy, other, export, electricity_production, heat_production, hydrogen_production, losses)

require 'spec_helper'

RSpec.describe 'Biomass' do
  $preset_collections.each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      it 'results in all input flows (column 0) equaling all output flows (column 3) minus industry transformation losses of the biomass sankey' do
        skip("Imbalance due to network gas burner efficiencies of 103")
        expect(
          scenario.turk_total_input_in_biomass_sankey
        ).to softly_equal(scenario.turk_total_output_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biomethanol_secondary node in the biomass sankey' do
        expect(
          scenario.turk_input_of_biomethanol_secondary_in_biomass_sankey
        ).to softly_equal(scenario.turk_output_of_biomethanol_secondary_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the bio_pyrolysis_oil_secondary node in the biomass sankey' do
        expect(
          scenario.turk_input_of_bio_pyrolysis_oil_secondary_in_biomass_sankey
        ).to softly_equal(scenario.turk_output_of_bio_pyrolysis_oil_secondary_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the greengas_secondary node in the biomass sankey' do
        skip("Imbalance due to network gas burner efficiencies of 103")
        expect(
          scenario.turk_input_of_greengas_secondary_in_biomass_sankey
        ).to softly_equal(scenario.turk_output_of_greengas_secondary_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the bio_kerosene_secondary node in the biomass sankey' do
        expect(
          scenario.turk_input_of_bio_kerosene_secondary_in_biomass_sankey
        ).to softly_equal(scenario.turk_output_of_bio_kerosene_secondary_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biodiesel_secondary node in the biomass sankey' do
        expect(
          scenario.turk_input_of_biodiesel_secondary_in_biomass_sankey
        ).to softly_equal(scenario.turk_output_of_biodiesel_secondary_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the bionaphtha_secondary node in the biomass sankey' do
        expect(
          scenario.turk_input_of_bionaphtha_secondary_in_biomass_sankey
        ).to softly_equal(scenario.turk_output_of_bionaphtha_secondary_in_biomass_sankey)
      end
    end
  end
end
