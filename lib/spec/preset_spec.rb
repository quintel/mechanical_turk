require_relative 'spec_helper'

describe Turk::Preset do
  before(:each) do
    load File.expand_path('webmock_stubs_v3.rb', __dir__)
  end

  describe 'with a Scenario' do
    let(:scenario) { Turk::Scenario.new(scenario_id: 1) }

    it 'allows setting inputs' do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
    end
  end

  describe 'with a Preset' do
    let(:preset) { Turk::Preset.new(1) }

    it 'raises error when trying to set an input' do
      expect { preset.number_of_energy_power_ultra_supercritical_coal = 10 }.to raise_error(Turk::ImmutableScenarioError)
    end
  end
end
