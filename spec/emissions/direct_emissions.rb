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
    end
  end
end
