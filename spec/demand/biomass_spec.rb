# Sliders ......

require 'spec_helper'

describe "Biomass" do

  context "Biomass general fever/merit order enabled" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
        settings_enable_merit_order: 1,
        natural_gas_total_share: 80.0, # increasing the greengas share
        green_gas_total_share: 20.0 # increasing the greengas share
        })
    end

    describe "Increasing the share of greengas in the gas network" do
      it "should result in an increase in the distribution of greengas" do

        # should result in an increase in the distribution of greengas
        expect(@scenario.share_of_greengas_in_gas_network). to increase

        # should result in the demand of the distribution nodes to be equal to the demand in all conversion nodes
        dry_biomass_distribution = @scenario.turk_dry_biomass_distribution
        dry_biomass_demand = @scenario.chp_heat_and_electricity_from_dry_biomass + @scenario.electricity_from_dry_biomass + @scenario.export_of_dry_biomass + @scenario.greengas_from_dry_biomass + @scenario.heat_from_dry_biomass + @scenario.hydrogen_from_dry_biomass + @scenario.wood_from_dry_biomass

        expect(dry_biomass_distribution).to be dry_biomass_demand

        
      end
    end
  end

end
