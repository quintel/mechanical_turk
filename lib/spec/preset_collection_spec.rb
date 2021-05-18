# frozen_string_literal: true

require_relative 'spec_helper'

describe Turk::PresetCollection do
  before(:each) do
    load 'webmock_stubs_v3.rb'
  end

  describe '.from_key' do
    context 'with existing key :basic' do
      subject { described_class.from_key(:basic) }

      it 'is a collection' do
        expect(subject).to be_a Turk::PresetCollection
      end

      it 'contains Presets' do
        expect(subject.presets[0]).to be_a Turk::Preset
      end

      it 'has three scenarios in its collection' do
        expect(subject.presets.length).to eq 3
      end
    end

    context 'with non existent key' do
      it 'raises an error' do
        expect{ described_class.from_key(:cupcake_mix) }.to raise_error(Turk::UnknownPresetError)
      end
    end
  end

  describe '#each' do
    let(:collection) { described_class.from_key(:basic) }

    it 'behaves like each' do
      counter = 0
      collection.each do |_|
        counter += 1
      end
      expect(counter).to eq 3
    end
  end
end
