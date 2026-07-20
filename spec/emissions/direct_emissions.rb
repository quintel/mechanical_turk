# Tests direct emissions method results

require 'spec_helper'

RSpec.describe 'Direct emissions' do
  Turk::PresetCollection.from_keys(:ii3050v2, :kev, :scenario_collection).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test correctness of scenario's total GHG emissions. A failing test indicates that the
      # sector_label might not have been added to a node or that the per sector GHG queries are
      # not complete.
      it "sum of total GHG emissions of all nodes should equal the sum of total GHG emissions per
        sector" do
        expect(
          scenario.turk_direct_emissions_total_ghg_all_nodes
        ).to softly_equal(
          scenario.turk_direct_emissions_total_ghg_incl_indirect_emissions_lulucf_bunkers
        )
      end

      # Test correctness of the sum of the total CO2 and total other GHG query match the total
      # GHG query, incl. indirect emissions, LULUCF, bunkers.
      it "sum of totals query for CO2 and other GHG (incl. indirect emissions, LULUCF, bunkers)
        should equal the total GHG query" do
        expect(
          scenario.turk_direct_emissions_sum_co2_other_ghg_incl_indirect_emissions_lulucf_bunkers
        ).to softly_equal(
          scenario.turk_direct_emissions_total_ghg_incl_indirect_emissions_lulucf_bunkers
        )
      end

      # Test correctness of the sum of the total CO2 and total other GHG query match the total
      # GHG query, excl. indirect emissions, LULUCF, bunkers.
      it "sum of totals query for CO2 and other GHG (excl. indirect emissions, LULUCF, bunkers)
        should equal the total GHG query" do
        expect(
          scenario.turk_direct_emissions_sum_co2_other_ghg_excl_indirect_emissions_lulucf_bunkers
        ).to softly_equal(
          scenario.turk_direct_emissions_total_ghg_excl_indirect_emissions_lulucf_bunkers
        )
      end
    end
  end
end
