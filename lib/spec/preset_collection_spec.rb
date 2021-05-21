# frozen_string_literal: true

require_relative 'spec_helper'

describe Turk::PresetCollection do
  before(:each) do
    load 'webmock_stubs_v3.rb'
  end

  describe '.from_key' do
    context 'with existing key :basic' do
      let(:key) { :ii3050 }
      subject { described_class.from_key(key) }

      it 'is a collection' do
        expect(subject).to be_a Turk::PresetCollection
      end

      it 'contains Presets' do
        expect(subject.presets[0]).to be_a Turk::Preset
      end

      it 'has three scenarios in its collection' do
        expect(subject.presets.length).to eq described_class::PRESET_SCENARIOS[key].length
      end
    end

    context 'with non existent key' do
      it 'raises an error' do
        expect { described_class.from_key(:cupcake_mix) }.to raise_error(Turk::UnknownPresetError)
      end
    end
  end

  describe '#each' do
    let(:key) { :ii3050 }
    let(:collection) { described_class.from_key(key) }

    it 'behaves like each' do
      counter = 0
      collection.each do |_|
        counter += 1
      end
      expect(counter).to eq described_class::PRESET_SCENARIOS[key].length
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
