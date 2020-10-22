# Sliders ...

require 'spec_helper'

describe "CCUS" do

  context "Custom scenario" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      share_of_industry_steel_captured_co2: 60.0,
      share_of_industry_chemicals_fertilizers_captured_processes_co2: 70.0,
      share_of_industry_chemicals_fertilizers_captured_combustion_co2: 100.0,
      share_of_industry_other_paper_captured_co2: 80.0,
      share_of_industry_other_food_captured_co2: 65.0,
      share_of_energy_power_ultra_supercritical_ccs_coal: 50.0,
      capacity_of_energy_power_combined_cycle_coal: 3000.0,
      share_of_energy_power_combined_cycle_ccs_coal: 90.0,
      share_of_energy_power_combined_cycle_ccs_network_gas: 100.0,
      capacity_of_energy_hydrogen_steam_methane_reformer: 4000.0,
      capacity_of_energy_hydrogen_biomass_gasification: 5000.0,
      share_of_energy_hydrogen_steam_methane_reformer_ccs: 100.0,
      share_of_energy_hydrogen_biomass_gasification_ccs: 90.0,
      demand_of_molecules_direct_air_capture_co2: 6.0,
      demand_of_molecules_offshore_sequestration_co2: 10.0,
      output_of_energy_production_synthetic_kerosene: 24.0,
      output_of_energy_production_synthetic_methanol: 45.0
    })
    end

    describe "" do

      it "should result in all input and output flows of the CCUS sankey nodes to be equal" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_total_input_in_ccus_sankey.value.should be_within(margin * @scenario.turk_total_output_in_ccus_sankey.value).of(@scenario.turk_total_output_in_ccus_sankey.value)
      end
    end
  end

  context "Default scenario" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        settings_enable_merit_order: 0
      })
    end

    describe "Capture rate in Energy Graph and Molecules Graph" do

      it "should be equal for energy_power_ultra_supercritical_oxyfuel_ccs_lignite" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_energy_power_ultra_supercritical_oxyfuel_ccs_lignite_capture_share.value.should be_within(margin * @scenario.turk_energy_power_ultra_supercritical_oxyfuel_ccs_lignite_capture_rate.value).of(@scenario.turk_energy_power_ultra_supercritical_oxyfuel_ccs_lignite_capture_rate.value)
      end
      it "should be equal for energy_hydrogen_biomass_gasification_ccs" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_energy_hydrogen_biomass_gasification_ccs_capture_share.value.should be_within(margin * @scenario.turk_energy_hydrogen_biomass_gasification_ccs_capture_rate.value).of(@scenario.turk_energy_hydrogen_biomass_gasification_ccs_capture_rate.value)
      end
      it "should be equal for turk_energy_hydrogen_steam_methane_reformer_ccs" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_energy_hydrogen_steam_methane_reformer_ccs_capture_share.value.should be_within(margin * @scenario.turk_energy_hydrogen_steam_methane_reformer_ccs_capture_rate.value).of(@scenario.turk_energy_hydrogen_steam_methane_reformer_ccs_capture_rate.value)
      end
      it "should be equal for turk_energy_power_combined_cycle_ccs_coal" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_energy_power_combined_cycle_ccs_coal_capture_share.value.should be_within(margin * @scenario.turk_energy_power_combined_cycle_ccs_coal_capture_rate.value).of(@scenario.turk_energy_power_combined_cycle_ccs_coal_capture_rate.value)
      end
      it "should be equal for turk_energy_power_combined_cycle_ccs_network_gas" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_energy_power_combined_cycle_ccs_network_gas_capture_share.value.should be_within(margin * @scenario.turk_energy_power_combined_cycle_ccs_network_gas_capture_rate.value).of(@scenario.turk_energy_power_combined_cycle_ccs_network_gas_capture_rate.value)
      end
      it "should be equal for turk_energy_power_ultra_supercritical_ccs_coal" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_energy_power_ultra_supercritical_ccs_coal_capture_share.value.should be_within(margin * @scenario.turk_energy_power_ultra_supercritical_ccs_coal_capture_rate.value).of(@scenario.turk_energy_power_ultra_supercritical_ccs_coal_capture_rate.value)
      end
    end
  end
end
