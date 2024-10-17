# frozen_string_literal: true

require_relative 'spec_helper'

describe Turk::PresetCollection do
  before(:each) do
    load 'webmock_stubs_v3.rb'
  end

  let(:valid_key) { :ii3050v2 }

  describe '.from_key' do
    context 'with existing key :ii3050v2' do
      subject { described_class.from_key(valid_key) }

      it 'is a collection' do
        expect(subject).to be_a Turk::PresetCollection
      end

      it 'contains Presets' do
        expect(subject.presets[0]).to be_a Turk::Preset
      end

      it 'has three scenarios in its collection' do
        expect(subject.presets.length).to eq described_class::PRESET_SCENARIOS[valid_key].length
      end
    end

    context 'with non existent key' do
      it 'raises an error' do
        expect { described_class.from_key(:cupcake_mix) }.to raise_error(Turk::UnknownPresetError)
      end
    end
  end

  describe '.from_keys' do
    context 'with existing keys :ii3050v2 and :ii3050v2' do
      subject { described_class.from_keys(valid_key, valid_key) }

      it 'is a collection' do
        expect(subject).to be_a Turk::PresetCollection
      end

      it 'contains Presets' do
        expect(subject.presets[0]).to be_a Turk::Preset
      end

      it 'has three scenarios in its collection' do
        expect(subject.presets.length).to eq(
          2 * described_class::PRESET_SCENARIOS[valid_key].length
        )
      end
    end

    context 'with non existent key' do
      it 'raises an error' do
        expect { described_class.from_keys(:cupcake_mix, valid_key) }.to raise_error(
          Turk::UnknownPresetError
        )
      end
    end
  end

  describe '.all' do
    it 'contains all scenarios' do
      expect(described_class.all.presets.length).to eq(
        described_class::PRESET_SCENARIOS.values.flatten.uniq.length
      )
    end
  end

  describe '#each' do
    let(:collection) { described_class.from_key(valid_key) }

    it 'behaves like each' do
      counter = 0
      collection.each do |_|
        counter += 1
      end
      expect(counter).to eq described_class::PRESET_SCENARIOS[valid_key].length
    end

    it 'loops through all the scenarios' do
      collection.each do |scenario|
        expect(scenario).to be_a Turk::Preset
      end
    end

    it 'loops through unique scenarios' do
      last_scenario = nil
      collection.each do |scenario|
        expect(scenario).not_to eq last_scenario
        last_scenario = scenario
      end
    end
  end
end
