require 'spec_helper'

describe "CCUS" do
  Turk::PresetCollection.from_keys(:ii3050, :nvdt, :scenario_collection).each do |scenario|

    context "with scenario #{scenario.original_scenario_id}" do
      it "should result in all input and output flows of the CCUS sankey nodes to be equal" do
        expect(
          scenario.turk_total_input_in_ccus_sankey
        ).to softly_equal(
          scenario.turk_total_output_in_ccus_sankey
        )
      end

      describe "Capture rate in Energy Graph and Molecules Graph" do

        it "should be equal for energy_power_ultra_supercritical_oxyfuel_ccs_lignite" do
          expect(
            scenario.turk_energy_power_ultra_supercritical_oxyfuel_ccs_lignite_capture_share
          ).to softly_equal(
            scenario.turk_energy_power_ultra_supercritical_oxyfuel_ccs_lignite_capture_rate
          )
        end


        it "should be equal for energy_hydrogen_biomass_gasification_ccs" do
          expect(
            scenario.turk_energy_hydrogen_biomass_gasification_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_hydrogen_biomass_gasification_ccs_capture_rate
          )
        end

        it "should be equal for energy_hydrogen_steam_methane_reformer_ccs" do
          expect(
            scenario.turk_energy_hydrogen_steam_methane_reformer_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_hydrogen_steam_methane_reformer_ccs_capture_rate
          )
        end

        it "should be equal for energy_power_combined_cycle_ccs_coal" do
          expect(
            scenario.turk_energy_power_combined_cycle_ccs_coal_capture_share
          ).to softly_equal(
            scenario.turk_energy_power_combined_cycle_ccs_coal_capture_rate
          )
        end

        it "should be equal for energy_power_combined_cycle_ccs_network_gas" do
          expect(
            scenario.turk_energy_power_combined_cycle_ccs_network_gas_capture_share
          ).to softly_equal(
            scenario.turk_energy_power_combined_cycle_ccs_network_gas_capture_rate
          )
        end

        it "should be equal for energy_power_ultra_supercritical_ccs_coal" do
          expect(
            scenario.turk_energy_power_ultra_supercritical_ccs_coal_capture_share
          ).to softly_equal(
            scenario.turk_energy_power_ultra_supercritical_ccs_coal_capture_rate
          )
        end

      end
    end
  end

  # Test CO2 flows in Fischer-Tropsch and methanol synthesis with CCS for
  # biogenic carriers and non-biogenic carrier routes
  context "CO2 flows in gasification technologies with CCS" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl2023", end_year: 2050)
    end

    # Captured biogenic CO2 leads to negative emissions and should be equal to
    # the (negative) primary CO2 emissions
    it "captured CO2 for biogenic carriers should be equal to primary CO2 emissions" do
      @scenario.output_of_energy_production_fischer_tropsch = 100.0 #PJ
      @scenario.energy_production_fischer_tropsch_dry_biomass_ccs_share = 100.0 #%

      expect(
        @scenario.turk_energy_production_fischer_tropsch_dry_biomass_ccs_captured
      ).to softly_equal(
        @scenario.turk_energy_production_fischer_tropsch_dry_biomass_ccs_primary_co2
      )
    end

    # CO2 input of process node should be equal to the total CO2 output, consisting of
    # CO2 in products, captured CO2 and emitted CO2 (from molecule graph)
    it "total input of CO2 should equal total output of CO2" do
      @scenario.output_of_energy_production_methanol_synthesis = 100.0 #PJ
      @scenario.energy_production_methanol_synthesis_non_biogenic_waste_ccs_share = 100.0 #%

      expect(
        @scenario.turk_energy_production_methanol_synthesis_non_biogenic_waste_ccs_co2_in
      ).to softly_equal(
        @scenario.turk_energy_production_methanol_synthesis_non_biogenic_waste_ccs_co2_out
      )
    end

  end
end
