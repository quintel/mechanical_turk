require_relative 'spec_helper'

describe Turk::Preset do

  let(:preset) { Turk::Scenario.new(1) }

  before(:each) do
    load 'webmock_stubs_v3.rb'
  end

  describe "#set key" do
    it "should remember the key in @inputs" do
      preset.number_of_energy_power_ultra_supercritical_coal = 10
    end
  end
end
