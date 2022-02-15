# Sliders ...

require 'spec_helper'

describe "External Coupling" do

  context "Custom scenario" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      external_coupling_industry_metal_steel_blastfurnace_bof_share: 20.0,
      external_coupling_industry_metal_steel_cyclonefurnace_bof_share: 0.0,
      external_coupling_industry_metal_steel_dri_network_gas_share: 0.0,
      external_coupling_industry_metal_steel_dri_hydrogen_share: 0.0,
      external_coupling_industry_metal_steel_scrap_hbi_eaf_share: 0.0,
      external_coupling_industry_metal_steel_external_coupling_share: 80.0,
    })
    end

    describe "" do

      it "should result in all production shares to add up to 100%" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_industry_metal_steel_production_shares.value.should be_within(margin * 100).of(100)
      end
    end
  end

  context "Default scenario" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        settings_enable_merit_order: 0
      })
    end

    describe "" do

      it "" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario..value.should be_within(margin * @scenario..value).of(@scenario..value)
      end
    end
  end
end
