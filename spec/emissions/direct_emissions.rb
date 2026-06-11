# Tests direct emissions method results

require 'spec_helper'

RSpec.describe 'Direct emissions' do
  Turk::PresetCollection.all.each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test correctness of scenario's total GHG emissions. If test fails, this indicated that an
      # emissions group might be added to a node that is not included in the query that sums total
      # GHG emissions per sector.
      it "sum of total GHG emissions of all nodes should equal the sum of total GHG emissions per
        sector" do
        expect(
          scenario.turk_direct_emissions_total_ghg_incl_indirect_emissions_lulucf_bunkers
        ).to softly_equal(
          scenario.direct_emissions_total_ghg_incl_indirect_emissions_lulucf_bunkers
        )
      end

      it "sum of 1990 CO2 emissions per subsector should equal the 1990 CO2 emissions total" do
        expect(
          scenario.turk_direct_emissions_co2_1990
        ).to softly_equal(
          scenario.direct_emissions_co2_1990
        )
      end

      it "sum of 1990 other GHG emissions per subsector should equal the 1990 other GHG emissions total" do
        expect(
          scenario.turk_direct_emissions_other_ghg_1990
        ).to softly_equal(
          scenario.direct_emissions_other_ghg_1990
        )
      end

      it "sum of 1990 CO2 and other GHG emissions should equal the 1990 total GHG emissions" do
        expect(
          scenario.turk_direct_emissions_total_ghg_1990
        ).to softly_equal(
          scenario.direct_emissions_total_ghg_1990
        )
      end
    end
  end
end
