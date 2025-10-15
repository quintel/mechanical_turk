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

        it "should be equal for energy_production_fischer_tropsch_biogenic_waste_ccs" do
          expect(
            scenario.turk_energy_production_fischer_tropsch_biogenic_waste_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_production_fischer_tropsch_biogenic_waste_ccs_capture_rate
          )
        end

        it "should be equal for energy_production_fischer_tropsch_dry_biomass_ccs" do
          expect(
            scenario.turk_energy_production_fischer_tropsch_dry_biomass_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_production_fischer_tropsch_dry_biomass_ccs_capture_rate
          )
        end
        it "should be equal for energy_production_fischer_tropsch_biogenic_waste_ccs" do
          expect(
            scenario.turk_energy_production_fischer_tropsch_biogenic_waste_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_production_fischer_tropsch_biogenic_waste_ccs_capture_rate
          )
        end

        it "should be equal for energy_production_methanol_synthesis_biogenic_waste_ccs" do
          expect(
            scenario.turk_energy_production_methanol_synthesis_biogenic_waste_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_production_methanol_synthesis_biogenic_waste_ccs_capture_rate
          )
        end

        it "should be equal for energy_production_methanol_synthesis_dry_biomass_ccs" do
          expect(
            scenario.turk_energy_production_methanol_synthesis_dry_biomass_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_production_methanol_synthesis_dry_biomass_ccs_capture_rate
          )
        end

        it "should be equal for energy_production_methanol_synthesis_non_biogenic_waste_ccs" do
          expect(
            scenario.turk_energy_production_methanol_synthesis_non_biogenic_waste_ccs_capture_share
          ).to softly_equal(
            scenario.turk_energy_production_methanol_synthesis_non_biogenic_waste_ccs_capture_rate
          )
        end
      end
    end
  end
end
