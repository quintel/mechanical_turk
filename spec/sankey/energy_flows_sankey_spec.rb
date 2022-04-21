# frozen_string_literal: true

require 'spec_helper'

describe 'Energy flows Sankey' do
  Turk::PresetCollection.from_keys(:ii3050, :nvdt, :scenario_collection, :merit_off).each do |scenario|
    context "with scenario #{scenario.original_scenario_id}" do
      # Test whether central heat supply equals central heat demand in the energy flows Sankey
      it 'Supply to central heat in the energy flows Sankey should match the demand from central heat including losses' do
        expect(
          scenario.turk_sankey_central_heat_supply
        ).to softly_equal(
          scenario.turk_sankey_central_heat_demand
        )
      end
    end
  end
end
