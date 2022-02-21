# Testing the external coupling input statements for the steel, fertilizer, refinery and other chemical sector.

require 'spec_helper'

describe "External Coupling" do

  context "Custom scenario" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      external_coupling_industry_metal_steel_blastfurnace_bof_share: 10.0,
      external_coupling_industry_metal_steel_cyclonefurnace_bof_share: 10.0,
      external_coupling_industry_metal_steel_dri_network_gas_share: 10.0,
      external_coupling_industry_metal_steel_dri_hydrogen_share: 10.0,
      external_coupling_industry_metal_steel_scrap_hbi_eaf_share: 10.0,
      external_coupling_industry_metal_steel_external_coupling_share: 50.0,
      external_coupling_industry_metal_steel_energetic_electricity_share: 10.0,
      external_coupling_industry_metal_steel_energetic_coal_share: 10.0,
      external_coupling_industry_metal_steel_energetic_coal_gas_share: 10.0,
      external_coupling_industry_metal_steel_energetic_cokes_share: 10.0,
      external_coupling_industry_metal_steel_energetic_network_gas_share: 10.0,
      external_coupling_industry_metal_steel_energetic_wood_pellets_share: 10.0,
      external_coupling_industry_metal_steel_energetic_crude_oil_share: 10.0,
      external_coupling_industry_metal_steel_energetic_hydrogen_share: 10.0,
      external_coupling_industry_metal_steel_energetic_steam_hot_water_share: 20.0,
      external_coupling_industry_metal_steel_efficiency: 80.0,
      external_coupling_industry_metal_steel_total_demand: 150.0,
      external_coupling_industry_metal_steel_wacc: 0.1,
      external_coupling_industry_metal_steel_fixed_om_costs: 5000000000,
      external_coupling_industry_metal_steel_investment_costs: 50000000000,
      external_coupling_industry_metal_steel_technical_lifetime: 20.0,
      external_coupling_industry_metal_steel_ccus_capture_potential: 80.0,
      external_coupling_industry_metal_steel_ccus_electricity_use: 3.0,

      external_coupling_industry_chemical_fertilizers_energetic_coal_share: 10.0,
      external_coupling_industry_chemical_fertilizers_energetic_crude_oil_share: 10.0,
      external_coupling_industry_chemical_fertilizers_energetic_electricity_share: 10.0,
      external_coupling_industry_chemical_fertilizers_energetic_hydrogen_share: 10.0,
      external_coupling_industry_chemical_fertilizers_energetic_network_gas_share: 10.0,
      external_coupling_industry_chemical_fertilizers_energetic_steam_hot_water_share: 10.0,
      external_coupling_industry_chemical_fertilizers_energetic_wood_pellets_share: 40.0,
      external_coupling_industry_chemical_fertilizers_non_energetic_coal_share: 10.0,
      external_coupling_industry_chemical_fertilizers_non_energetic_crude_oil_share: 10.0,
      external_coupling_industry_chemical_fertilizers_non_energetic_hydrogen_share: 10.0,
      external_coupling_industry_chemical_fertilizers_non_energetic_network_gas_share: 10.0,
      external_coupling_industry_chemical_fertilizers_non_energetic_wood_pellets_share: 60.0,
      external_coupling_industry_chemical_fertilizers_total_energetic_share: 80.0,
      external_coupling_industry_chemical_fertilizers_total_demand: 120.0,
      external_coupling_industry_chemical_fertilizers_wacc: 10.0,
      external_coupling_industry_chemical_fertilizers_fixed_om_costs: 50000000,
      external_coupling_industry_chemical_fertilizers_investment_costs: 40000000000,
      external_coupling_industry_chemical_fertilizers_technical_lifetime: 15.0,
      external_coupling_industry_chemical_fertilizers_combustion_ccus_capture_potential: 90,
      external_coupling_industry_chemical_fertilizers_combustion_ccus_electricity_use: 4,
      external_coupling_industry_chemical_fertilizers_processes_ccus_capture_potential: 95,
      external_coupling_industry_chemical_fertilizers_processes_ccus_electricity_use: 4.5,
      external_coupling_industry_chemical_fertilizers_residual_heat_processes_share: 60.0,
      external_coupling_industry_chemical_fertilizers_residual_heat_flue_gasses_share: 40.0,

      external_coupling_industry_chemical_refineries_useable_heat: 10.0,
      external_coupling_industry_chemical_refineries_burner_coal_share: 10.0,
      external_coupling_industry_chemical_refineries_burner_crude_oil_share: 10.0,
      external_coupling_industry_chemical_refineries_burner_hydrogen_share: 10.0,
      external_coupling_industry_chemical_refineries_burner_network_gas_share: 10.0,
      external_coupling_industry_chemical_refineries_burner_wood_pellets_share: 10.0,
      external_coupling_industry_chemical_refineries_steam_hot_water_share: 10.0,
      external_coupling_industry_chemical_refineries_electricity: 30.0,
      external_coupling_industry_chemical_refineries_total_non_energetic: 130.0,
      external_coupling_industry_chemical_refineries_transformation_crude_oil_output_share: 10.0,
      external_coupling_industry_chemical_refineries_transformation_diesel_output_share: 10.0,
      external_coupling_industry_chemical_refineries_transformation_gasoline_output_share: 10.0,
      external_coupling_industry_chemical_refineries_transformation_heavy_fuel_oil_output_share: 10.0,
      external_coupling_industry_chemical_refineries_transformation_kerosene_output_share: 10.0,
      external_coupling_industry_chemical_refineries_transformation_loss_output_share: 10.0,
      external_coupling_industry_chemical_refineries_transformation_lpg_output_share: 10.0,
      external_coupling_industry_chemical_refineries_transformation_refinery_gas_output_share: 30.0,
      external_coupling_industry_chemical_refineries_cccus_capture_potential: 85,
      external_coupling_industry_chemical_refineries_ccus_electricity_use: 3.5,
      external_coupling_industry_chemical_refineries_residual_heat_processes_share: 40.0,
      external_coupling_industry_chemical_refineries_residual_heat_flue_gasses_share: 60.0,

      external_coupling_industry_chemical_other_useable_heat: 180.0,
      external_coupling_industry_chemical_other_burner_coal_share: 10.0,
      external_coupling_industry_chemical_other_burner_crude_oil_share: 10.0,
      external_coupling_industry_chemical_other_burner_hydrogen_share: 10.0,
      external_coupling_industry_chemical_other_burner_network_gas_share: 10.0,
      external_coupling_industry_chemical_other_burner_wood_pellets_share: 10.0,
      external_coupling_industry_chemical_other_steam_hot_water_share: 10.0,
      external_coupling_industry_chemical_other_heater_electricity_share: 10.0,
      external_coupling_industry_chemical_other_heatpump_water_water_electricity_share: 10.0,
      external_coupling_industry_chemical_other_steam_recompression_electricity_share: 20.0,
      external_coupling_industry_chemical_other_electricity: 300.0,
      external_coupling_industry_chemical_other_total_non_energetic: 160.0,
      external_coupling_industry_chemical_other_non_energetic_coal_share: 10.0,
      external_coupling_industry_chemical_other_non_energetic_crude_oil_share: 10.0,
      external_coupling_industry_chemical_other_non_energetic_hydrogen_share: 10.0,
      external_coupling_industry_chemical_other_non_energetic_network_gas_share: 10.0,
      external_coupling_industry_chemical_other_non_energetic_wood_pellets_share: 60.0,
      external_coupling_industry_chemical_other_ccus_capture_potential: 60.0,
      external_coupling_industry_chemical_other_ccus_electricity_use: 2.0,
      external_coupling_industry_chemical_other_residual_heat_processes_share: 30.0,
      external_coupling_industry_chemical_other_residual_heat_flue_gasses_share: 70.0,
    })
    end

    describe "External coupling input should be equeal to value used in scenario" do

      it "External coupling input" do
        # with an error margin of 1.0E-12
        margin = 1.0E-12

        @scenario.turk_industry_metal_steel_production_shares.value.should be_within(margin * 100).of(100)
      end
    end
  end
end
