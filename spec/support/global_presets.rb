# Initialize collections IMMEDIATELY when file is loaded
$preset_collections = Turk::PresetCollection.all

RSpec.configure do |config|
  # Runs once before the whole test suite
  config.before(:suite) do
    $preset_collections.each do |scenario|
      scenario.track(%w[
        turk_total_input_in_biomass_sankey
        turk_total_output_in_biomass_sankey
        turk_input_of_biomethanol_secondary_in_biomass_sankey
        turk_output_of_biomethanol_secondary_in_biomass_sankey
        turk_input_of_bio_pyrolysis_oil_secondary_in_biomass_sankey
        turk_output_of_bio_pyrolysis_oil_secondary_in_biomass_sankey
        turk_input_of_greengas_secondary_in_biomass_sankey
        turk_output_of_greengas_secondary_in_biomass_sankey
        turk_input_of_bio_kerosene_secondary_in_biomass_sankey
        turk_output_of_bio_kerosene_secondary_in_biomass_sankey
        turk_input_of_biodiesel_secondary_in_biomass_sankey
        turk_output_of_biodiesel_secondary_in_biomass_sankey
        turk_input_of_bionaphtha_secondary_in_biomass_sankey
        turk_output_of_bionaphtha_secondary_in_biomass_sankey
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
