# Initialize collections IMMEDIATELY when file is loaded
$preset_collection_ii3050v2 = Turk::PresetCollection.from_keys(:ii3050v2)

#... other collections can be initialized here

RSpec.configure do |config|
  # Runs once before the whole test suite
  config.before(:suite) do
    $preset_collection_ii3050v2.each do |scenario|
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
      ])
    end

    #... other collections queries can be cached here

  end
end