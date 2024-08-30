# Sliders ...

require 'spec_helper'

describe 'Biomass', skip: true do
  context 'Net voor de Toekomst - Nationaal' do
    before do
      @scenario = Turk::Preset.new(112_999_0)
    end

    describe 'The slider settings of NvdT Nationaal' do
      it 'results in the total demand of the dry biomass resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_dry_biomass
        ).to softly_equal(@scenario.turk_demand_dry_biomass)
      end

      it 'results in the total demand of the wet biomass resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_wet_biomass
        ).to softly_equal(@scenario.turk_demand_wet_biomass)
      end

      it 'results in the total demand of the oily biomass resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_oily_biomass
        ).to softly_equal(@scenario.turk_demand_oily_biomass)
      end

      it 'results in the total demand of the biogenic waste resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_biogenic_waste
        ).to softly_equal(@scenario.turk_demand_biogenic_waste)
      end

      it 'results in all input and output flows of the biomass sankey nodes to be equal' do
        expect(
          @scenario.turk_total_input_in_biomass_sankey
        ).to softly_equal(@scenario.turk_total_output_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biogenic_waste node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_biogenic_waste_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_biogenic_waste_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the wet node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_wet_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_wet_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the oily node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_oily_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_oily_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the dry node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_dry_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_dry_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biogas node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_biogas_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_biogas_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the greengas node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_greengas_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_greengas_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biofuels node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_biofuels_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_biofuels_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the electricity_prod node in the biomass sankey,
        taking into account a correction for heaters with >100\% efficiencies' do
        expect(
          [
            @scenario.turk_input_of_electricity_prod_in_biomass_sankey,
            @scenario.turk_input_of_electricity_prod_in_biomass_sankey_efficiency_correction
          ]
        ).to sum_to_softly_equal(@scenario.turk_output_of_electricity_prod_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the central_heat_prod node in the biomass sankey,
        taking into account a correction for heaters with >100\% efficiencies' do
        expect(
          [
            @scenario.turk_input_of_central_heat_prod_in_biomass_sankey,
            @scenario.turk_input_of_central_heat_prod_in_biomass_sankey_efficiency_correction
          ]
        ).to sum_to_softly_equal(@scenario.turk_output_of_central_heat_prod_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the hydrogen_prod node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_hydrogen_prod_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_hydrogen_prod_in_biomass_sankey)
      end
    end
  end

  context 'general fever/merit order enabled' do
    before do
      @scenario = Turk::Scenario.new(
        area_code: 'nl',
        end_year: 2050,
        autobalance: true,
        inputs: {
          settings_enable_merit_order: 1,
          natural_gas_total_share: 50.0,
          green_gas_total_share: 50.0
        }
      )
    end

    describe 'Increasing the share of greengas in the gas network' do
      it 'results in an increase in the distribution of greengas' do
        expect(@scenario.turk_distribution_greengas).to increase
      end

      it 'results in the total demand of the dry biomass resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_dry_biomass
        ).to softly_equal(@scenario.turk_demand_dry_biomass)
      end

      it 'results in the total demand of the wet biomass resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_wet_biomass
        ).to softly_equal(@scenario.turk_demand_wet_biomass)
      end

      it 'results in the total demand of the oily biomass resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_oily_biomass
        ).to softly_equal(@scenario.turk_demand_oily_biomass)
      end

      it 'results in the total demand of the biogenic waste resources to be equal to the distribution demand' do
        expect(
          @scenario.turk_distribution_biogenic_waste
        ).to softly_equal(@scenario.turk_demand_biogenic_waste)
      end

      it 'results in all input and output flows of the biomass sankey nodes to be equal' do
        expect(
          @scenario.turk_total_input_in_biomass_sankey
        ).to softly_equal(@scenario.turk_total_output_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biogenic_waste node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_biogenic_waste_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_biogenic_waste_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the wet node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_wet_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_wet_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the oily node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_oily_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_oily_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the dry node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_dry_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_dry_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biogas node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_biogas_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_biogas_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the greengas node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_greengas_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_greengas_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the biofuels node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_biofuels_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_biofuels_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the electricity_prod node in the biomass sankey,
        taking into account a correction for heaters with >100\% efficiencies' do
        expect(
          [
            @scenario.turk_input_of_electricity_prod_in_biomass_sankey,
            @scenario.turk_input_of_electricity_prod_in_biomass_sankey_efficiency_correction
          ]
        ).to sum_to_softly_equal(@scenario.turk_output_of_electricity_prod_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the central_heat_prod node in the biomass sankey,
        taking into account a correction for heaters with >100\% efficiencies' do
        expect(
          [
            @scenario.turk_input_of_central_heat_prod_in_biomass_sankey,
            @scenario.turk_input_of_central_heat_prod_in_biomass_sankey_efficiency_correction
          ]
        ).to sum_to_softly_equal(@scenario.turk_output_of_central_heat_prod_in_biomass_sankey)
      end

      it 'results in equal input and output flows of the hydrogen_prod node in the biomass sankey' do
        expect(
          @scenario.turk_input_of_hydrogen_prod_in_biomass_sankey
        ).to softly_equal(@scenario.turk_output_of_hydrogen_prod_in_biomass_sankey)
      end
    end
  end
end
