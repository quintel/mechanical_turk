# Turk to check the inputs of the chemical industry.
require 'spec_helper'

describe "Standard scenario: Chemical industry" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: 'nl', end_year: 2050,  autobalance: true, inputs: {
        settings_enable_merit_order: 1
      })
  end

  describe "Demand growth:" do

    it "Should increase energy demand, import, CO2 emission and costs when demand growth is increased" do
      @scenario.industry_useful_demand_for_chemical_fertilizers = 105 #%
      @scenario.industry_useful_demand_for_chemical_other = 105 #%
      @scenario.industry_useful_demand_for_chemical_refineries = 105 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.dashboard_energy_import_netto).to increase
      expect(@scenario.total_costs).to increase
    end
  end

  describe "Efficiency improvement:" do

    it "Improving efficiency of electric processes should decrease demand, import, CO2 emission and cost" do
      @scenario.industry_useful_demand_for_chemical_fertilizers_electricity_efficiency = 2 #%
      @scenario.industry_useful_demand_for_chemical_other_electricity_efficiency = 2 #%
      @scenario.industry_useful_demand_for_chemical_refineries_electricity_efficiency = 2 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_energy_import_netto).to decrease
      expect(@scenario.total_costs).to decrease
    end

    it "Improving efficiency of heating processes should decrease demand, import, CO2 emission and cost" do
      @scenario.industry_useful_demand_for_chemical_fertilizers_useable_heat_efficiency = 2 #%
      @scenario.industry_useful_demand_for_chemical_other_useable_heat_efficiency = 2 #%
      @scenario.industry_useful_demand_for_chemical_refineries_useable_heat_efficiency = 2 #%
      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to decrease
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      expect(@scenario.dashboard_energy_import_netto).to decrease
      expect(@scenario.total_costs).to decrease
    end
  end

  describe "Heating:" do

    it "Using coal-fired heaters instead of gas-fired in refineries should increase demand and CO2 emission, but decrease cost and bio-footprint" do

      # Initialize to 100 % gas
      @scenario.industry_chemicals_refineries_burner_network_gas_share = 100 #%
      @scenario.industry_chemicals_refineries_burner_crude_oil_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_coal_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_wood_pellets_share = 0 #%

      @scenario.refresh!

      # Now put coal to 100 %
      @scenario.industry_chemicals_refineries_burner_network_gas_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_crude_oil_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_coal_share = 100 #%
      @scenario.industry_chemicals_refineries_burner_wood_pellets_share = 0 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to increase
      expect(@scenario.total_costs).to decrease
      expect(@scenario.dashboard_bio_footprint).to decrease
    end

    it "Using biomass-fired heaters instead of gas-fired in refineries should increase demand, costs and bio-footprint, but decrease CO2 emission" do

      # Initialize to 100 % gas
      @scenario.industry_chemicals_refineries_burner_network_gas_share = 100 #%
      @scenario.industry_chemicals_refineries_burner_crude_oil_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_coal_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_wood_pellets_share = 0 #%

      @scenario.refresh!

      # Now put biomass to 100 %
      @scenario.industry_chemicals_refineries_burner_network_gas_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_crude_oil_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_coal_share = 0 #%
      @scenario.industry_chemicals_refineries_burner_wood_pellets_share = 100 #%

      expect(@scenario.dashboard_energy_demand_primary_of_final_plus_export_losses).to increase
      expect(@scenario.dashboard_reduction_of_co2_emissions_versus_1990).to decrease
      #temporarily disabled cost spec, see https://github.com/quintel/etsource/issues/1780
      #expect(@scenario.total_costs).to increase
      expect(@scenario.dashboard_bio_footprint).to increase
    end
  end
end

