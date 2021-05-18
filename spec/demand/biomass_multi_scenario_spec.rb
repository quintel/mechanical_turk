# Sliders ...

require 'spec_helper'

describe 'BiomasMultiScenario' do
  let(:default_margin) { 1.0E-12 }

  Turk::PresetCollection.from_key(:nvdt).each do |scenario|
    it 'results in the total demand of the dry biomass resources to be equal to the distribution demand' do
      expect(scenario.turk_distribution_dry_biomass.value)
        .to be_within(default_margin * scenario.turk_demand_dry_biomass.value)
        .of(scenario.turk_demand_dry_biomass.value)
    end

    it 'results in the total demand of the wet biomass resources to be equal to the distribution demand' do
      expect(scenario.turk_distribution_wet_biomass.value)
        .to be_within(default_margin * scenario.turk_demand_wet_biomass.value)
        .of(scenario.turk_demand_wet_biomass.value)
    end

    it 'results in the total demand of the oily biomass resources to be equal to the distribution demand' do
      # with an error margin of 1.0E-4
      margin = 1.0E-4
      expect(scenario.turk_distribution_oily_biomass.value)
        .to be_within(margin * scenario.turk_demand_oily_biomass.value)
        .of(scenario.turk_demand_oily_biomass.value)
    end

    it 'results in the total demand of the biogenic waste resources to be equal to the distribution demand' do
      expect(scenario.turk_distribution_biogenic_waste.value)
        .to be_within(default_margin * scenario.turk_demand_biogenic_waste.value)
        .of(scenario.turk_demand_biogenic_waste.value)
    end

    it 'results in all input and output flows of the biomass sankey nodes to be equal' do
      expect(scenario.turk_total_input_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_total_output_in_biomass_sankey.value)
        .of(scenario.turk_total_output_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the biogenic_waste node in the biomass sankey' do
      expect(scenario.turk_input_of_biogenic_waste_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_biogenic_waste_in_biomass_sankey.value)
        .of(scenario.turk_output_of_biogenic_waste_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the wet node in the biomass sankey' do
      expect(scenario.turk_input_of_wet_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_wet_in_biomass_sankey.value)
        .of(scenario.turk_output_of_wet_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the oily node in the biomass sankey' do
      expect(scenario.turk_input_of_oily_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_oily_in_biomass_sankey.value)
        .of(scenario.turk_output_of_oily_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the dry node in the biomass sankey' do
      expect(scenario.turk_input_of_dry_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_dry_in_biomass_sankey.value)
        .of(scenario.turk_output_of_dry_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the biogas node in the biomass sankey' do
      expect(scenario.turk_input_of_biogas_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_biogas_in_biomass_sankey.value)
        .of(scenario.turk_output_of_biogas_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the greengas node in the biomass sankey' do
      expect(scenario.turk_input_of_greengas_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_greengas_in_biomass_sankey.value)
        .of(scenario.turk_output_of_greengas_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the biofuels node in the biomass sankey' do
      expect(scenario.turk_input_of_biofuels_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_biofuels_in_biomass_sankey.value)
        .of(scenario.turk_output_of_biofuels_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the electricity_prod node in the biomass sankey,
      taking into account a correction for heaters with >100\% efficiencies' do
      expect(
        scenario.turk_input_of_electricity_prod_in_biomass_sankey.value +
        scenario.turk_input_of_electricity_prod_in_biomass_sankey_efficiency_correction.value
      ).to be_within(default_margin * scenario.turk_output_of_electricity_prod_in_biomass_sankey.value)
        .of(scenario.turk_output_of_electricity_prod_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the central_heat_prod node in the biomass sankey,
      taking into account a correction for heaters with >100\% efficiencies' do
      expect(
        scenario.turk_input_of_central_heat_prod_in_biomass_sankey.value +
        scenario.turk_input_of_central_heat_prod_in_biomass_sankey_efficiency_correction.value
      ).to be_within(default_margin * scenario.turk_output_of_central_heat_prod_in_biomass_sankey.value)
        .of(scenario.turk_output_of_central_heat_prod_in_biomass_sankey.value)
    end

    it 'results in equal input and output flows of the hydrogen_prod node in the biomass sankey' do
      expect(scenario.turk_input_of_hydrogen_prod_in_biomass_sankey.value)
        .to be_within(default_margin * scenario.turk_output_of_hydrogen_prod_in_biomass_sankey.value)
        .of(scenario.turk_output_of_hydrogen_prod_in_biomass_sankey.value)
    end
  end
end
