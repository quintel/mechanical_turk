# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'Final Energy Consumption' do
  # network_gas is not listed: it is incorporated in the other carrier groups.
  carriers = %w[
    ammonia
    coal_and_coal_products
    electricity
    gaseous_biofuels
    geothermal
    heat
    hydrogen
    liquid_biofuels
    methanol
    natural_gas_and_gas_products
    non_renewable_waste
    oil_and_oil_products
    renewable_waste
    solar_thermal
    solid_biofuels
  ].freeze

  sectors = %w[
    agriculture
    buildings
    bunkers_international_aviation
    bunkers_international_navigation
    energy
    households
    industry
    industry_aluminium
    industry_fertilizers
    industry_food
    industry_ict
    industry_other_chemical
    industry_other_metals
    industry_other_non_specified
    industry_paper
    industry_refineries
    industry_steel
    international_transport
    national_transport
    other
  ].freeze

  # Only these sectors have non-energetic final consumption.
  non_energetic_sectors = %w[
    industry
    industry_fertilizers
    industry_other_chemical
    industry_other_non_specified
    industry_refineries
    national_transport
    other
  ].freeze

  # Maps each turk query to the general query it should equal, mirroring
  # gqueries/mechanical_turk/final_energy_consumption in ETSource. The queries
  # are built dynamically, so they are invisible to Turk::QueryExtractor and are
  # tracked explicitly below instead.
  query_pairs = {
    'turk_final_consumption_energetic_sum_carrier' => 'final_consumption_energetic',
    'turk_final_consumption_energetic_sum_sector' => 'final_consumption_energetic',
    'turk_final_consumption_non_energetic_sum_carrier' => 'final_consumption_non_energetic',
    'turk_final_consumption_non_energetic_sum_sector' => 'final_consumption_non_energetic',
    'turk_final_consumption_from_industry_energetic_sum_subsector' =>
      'final_consumption_from_industry_energetic',
    'turk_final_consumption_from_industry_non_energetic_sum_subsector' =>
      'final_consumption_from_industry_non_energetic',
    'turk_final_consumption_from_industry_total_sum_subsector' =>
      'final_consumption_from_industry_total',
    'turk_final_consumption_from_international_transport_energetic_sum_subsector' =>
      'final_consumption_from_international_transport_energetic'
  }

  queries = carriers.flat_map do |carrier|
    %w[energetic non_energetic total].map { |type| "final_consumption_of_#{carrier}_#{type}" }
  end

  queries += sectors.flat_map do |sector|
    %w[energetic total].map { |type| "final_consumption_from_#{sector}_#{type}" }
  end

  queries += non_energetic_sectors.map { |sector| "final_consumption_from_#{sector}_non_energetic" }

  queries.each { |query| query_pairs["turk_#{query}"] = query }
  query_pairs.freeze

  Turk::PresetCollection.from_keys(:ii3050v2, :kev, :scenario_collection).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Fetch all queries in a single request rather than one refresh per query.
      before(:all) { scenario.track(query_pairs.to_a.flatten.uniq) }

      query_pairs.each do |turk_query, query|
        it "#{turk_query} should equal #{query}" do
          expect(scenario.public_send(turk_query)).to softly_equal(scenario.public_send(query))
        end
      end
    end
  end
end
