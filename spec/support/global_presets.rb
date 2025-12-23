# Initialize collections IMMEDIATELY when file is loaded
$preset_collections = Turk::PresetCollection.all

RSpec.configure do |config|
  # Runs once before the whole test suite
  config.before(:suite) do
    $preset_collections.each do |scenario|
      scenario.track(%w[
        turk_distribution_dry_biomass
        turk_demand_dry_biomass
        turk_distribution_wet_biomass
        turk_demand_wet_biomass
        turk_distribution_oily_biomass
        turk_demand_oily_biomass
        turk_distribution_biogenic_waste
        turk_demand_biogenic_waste
        turk_total_input_in_biomass_sankey
        turk_total_output_in_biomass_sankey
        turk_input_of_biogenic_waste_in_biomass_sankey
        turk_output_of_biogenic_waste_in_biomass_sankey
        turk_input_of_wet_in_biomass_sankey
        turk_output_of_wet_in_biomass_sankey
        turk_input_of_oily_in_biomass_sankey
        turk_output_of_oily_in_biomass_sankey
        turk_input_of_dry_in_biomass_sankey
        turk_output_of_dry_in_biomass_sankey
        turk_input_of_biogas_in_biomass_sankey
        turk_output_of_biogas_in_biomass_sankey
        turk_input_of_greengas_in_biomass_sankey
        turk_output_of_greengas_in_biomass_sankey
        turk_input_of_biofuels_in_biomass_sankey
        turk_output_of_biofuels_in_biomass_sankey
        turk_mekko_of_collective_heat_ht_demand
        turk_mekko_of_collective_heat_ht_supply
        turk_mekko_of_collective_heat_ht_network_total_demand
        turk_mekko_of_collective_heat_ht_network_total_supply
        turk_mekko_of_collective_heat_mt_demand
        turk_mekko_of_collective_heat_mt_supply
        turk_mekko_of_collective_heat_mt_network_total_demand
        turk_mekko_of_collective_heat_mt_network_total_supply
        turk_mekko_of_collective_heat_lt_demand
        turk_mekko_of_collective_heat_lt_supply
        turk_mekko_of_collective_heat_lt_network_total_demand
        turk_mekko_of_collective_heat_lt_network_total_supply
        turk_mekko_of_electricity_network_demand
        turk_mekko_of_electricity_network_supply
        turk_mekko_of_network_gas_network_demand
        turk_mekko_of_network_gas_network_supply
        turk_mekko_of_network_gas_network_total_demand
        turk_mekko_of_network_gas_network_total_supply
        turk_agriculture_local_heat_mekko_demand
        turk_agriculture_local_heat_mekko_supply
        turk_agriculture_local_heat_mekko_total_demand_and_supply
        turk_industrial_heat_mekko_demand
        turk_industrial_heat_mekko_supply
        turk_industrial_heat_mekko_total_demand_and_supply
        turk_mekko_of_ammonia_demand_supply_demand
        turk_mekko_of_ammonia_demand_supply_supply
        turk_mekko_of_ammonia_demand_supply_total_demand_and_supply
        turk_mekko_of_co2_demand_supply_demand
        turk_mekko_of_co2_demand_supply_supply
        turk_mekko_of_co2_demand_supply_total_demand_and_supply
        turk_mekko_of_hydrogen_network_demand
        turk_mekko_of_hydrogen_network_supply
        turk_mekko_of_hydrogen_network_total_demand
        turk_mekko_of_hydrogen_network_total_supply
        turk_mekko_of_kerosene_demand_supply_demand
        turk_mekko_of_kerosene_demand_supply_supply
        turk_mekko_of_kerosene_demand_supply_total_demand_and_supply
      ])
    end

    #... other collections queries can be cached here

  end
end
