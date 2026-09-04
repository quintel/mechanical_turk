require 'spec_helper'

describe 'Built environment space heating behaviour' do
  # Each `it` below builds on the input state left behind by the previous one, so
  # `increase` / `decrease` / `change` / `not_change` always compare against the
  # immediately preceding Set. Examples therefore rely on running in file order.

  before(:all) do
    @scenario = Turk::Scenario.new(
      area_code: 'nl2023',
      end_year: 2050,
      autobalance: false
    )

    @scenario.track(%w[
      turk_households_useful_demand_for_space_heating
      turk_households_insulation_costs
      turk_useful_demand_apartments_future
      turk_useful_demand_apartments_2005_present
      turk_number_of_apartments_2005_present
      turk_number_of_apartments_future
      turk_number_of_detached_houses_future
      turk_number_of_semi_detached_houses_future
      turk_number_of_terraced_houses_future
      turk_number_of_residences_2005_present
      turk_number_of_residences_1985_2004
      turk_number_of_residences_1965_1984
      turk_number_of_residences_1945_1964
      turk_number_of_residences_before_1945
      turk_number_of_buildings_present
      turk_number_of_residences
      turk_number_of_buildings
      turk_number_of_residences_future
      turk_number_of_residences_new_input
      turk_buildings_useful_demand_for_space_heating
      turk_buildings_insulation_costs
    ])

    @apartments_2005_present_count = @scenario.turk_number_of_apartments_2005_present.present
  end

  # Set 1: shares of new residences to 100% apartments and number of new residences set to the
  # number of apartments from 2005_present. Number and demand for future apartments should equal
  # the 2005_present apartments values. There should be zero other future residences and zero insulation costs.
  it 'should set number and demand of future apartments equal to 2005_present aparments, have 0 other future residences and 0 insulation costs' do
    @scenario.households_share_of_apartments = 100.0
    @scenario.households_number_of_residences_new = @apartments_2005_present_count

    expect([
        @scenario.turk_number_of_detached_houses_future.future,
        @scenario.turk_number_of_semi_detached_houses_future.future,
        @scenario.turk_number_of_terraced_houses_future.future,
        @scenario.turk_households_insulation_costs.future,
        @scenario.turk_buildings_insulation_costs.future
      ]
    ).to all(eq(0.0))

    expect(
      @scenario.turk_number_of_apartments_future
    ).to softly_equal(@scenario.turk_number_of_apartments_2005_present)

    expect(
      @scenario.turk_useful_demand_apartments_future
    ).to softly_equal(@scenario.turk_useful_demand_apartments_2005_present)
  end

  # Set 2: adds flexibility_outdoor_temperature = 5. Due to higher temperatures, heat demand should decrease.
  # Despite lower heat demand, insulation costs should remain 0 since the insulation sliders are not touched.
  it 'should decrease heat demand, while keeping insulation costs at 0' do
    @scenario.flexibility_outdoor_temperature = 5

    expect([
        @scenario.turk_households_useful_demand_for_space_heating,
        @scenario.turk_buildings_useful_demand_for_space_heating
      ]
    ).to all(decrease)

    expect([
        @scenario.turk_households_insulation_costs.future,
        @scenario.turk_buildings_insulation_costs.future
      ]
    ).to all(eq(0.0))
  end

  # Set 3: set weather curve to dunkelflaute (1987). Space heating demand should increase.
  # Insulation costs should not be affected since insulation sliders are not touched.
  it 'should increase heat demand, while keeping insulation costs at 0' do
    @scenario.settings_weather_curve_set = '1987'

    expect([
        @scenario.turk_households_useful_demand_for_space_heating,
        @scenario.turk_buildings_useful_demand_for_space_heating
      ]
    ).to all(increase)

    expect([
        @scenario.turk_households_insulation_costs.future,
        @scenario.turk_buildings_insulation_costs.future
      ]
    ).to all(eq(0.0))
  end

  # Set 4: removes flexibility_outdoor_temperature, keeping the weather curve.
  # Should not change heat demand since weather curve overrides flexibility_outdoor_temperature anyway.
  it 'should not affect heat demand' do
    @scenario.flexibility_outdoor_temperature = 0.0

    expect([
        @scenario.turk_households_useful_demand_for_space_heating,
        @scenario.turk_buildings_useful_demand_for_space_heating
      ]
    ).to all(not_change)
  end

  # Set 5: sets all household insulation sliders to 10%. Household space heating demand should decrease by 10%.
  # Insulation costs should increase.
  it 'should decrease space heating demand by 10%, while increasing insulation costs' do
    @scenario.households_insulation_before_1945 = 10.0
    @scenario.households_insulation_1945_1964 = 10.0
    @scenario.households_insulation_1965_1984 = 10.0
    @scenario.households_insulation_1985_2004 = 10.0
    @scenario.households_insulation_2005_present = 10.0
    @scenario.households_insulation_new_residences = 10.0

    expect(
      @scenario.turk_households_useful_demand_for_space_heating.relative_decrease
    ).to be_within(0.00001).of(0.10)

    expect(
      @scenario.turk_households_insulation_costs
    ).to increase
  end

  it 'Set 6: sets heat behaviour for buildings and houses to -25%. Heat demand should reduce by 25%. Insulation costs should not change.' do
    @scenario.households_space_heating_behaviour = -25.0
    @scenario.buildings_space_heating_behaviour = -25.0

    expect(
      @scenario.turk_households_useful_demand_for_space_heating.relative_decrease
    ).to be_within(0.00001).of(0.25)

    expect(
      @scenario.turk_buildings_useful_demand_for_space_heating.relative_decrease
    ).to be_within(0.00001).of(0.25)

    expect([
        @scenario.turk_households_insulation_costs,
        @scenario.turk_buildings_insulation_costs
      ]
    ).to all(not_change)
  end

  it 'Set 7: all demolition sliders to max. Nr. of residences and buildings should be 0.' do
    @scenario.households_number_of_residences_new = 0.0
    @scenario.households_demolished_2005_present = @scenario.turk_number_of_residences_2005_present.present
    @scenario.households_demolished_1985_2004 = @scenario.turk_number_of_residences_1985_2004.present
    @scenario.households_demolished_1965_1984 = @scenario.turk_number_of_residences_1965_1984.present
    @scenario.households_demolished_1945_1964 = @scenario.turk_number_of_residences_1945_1964.present
    @scenario.households_demolished_before_1945 = @scenario.turk_number_of_residences_before_1945.present
    @scenario.buildings_number_of_buildings_demolished = @scenario.turk_number_of_buildings_present.present

    expect([
        @scenario.turk_number_of_buildings.future,
        @scenario.turk_number_of_residences.future
      ]
    ).to all(eq(0.0))
  end
end
