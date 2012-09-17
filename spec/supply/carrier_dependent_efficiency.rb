require 'spec_helper'

describe 'Carrier-dependent efficiency' do
  before do
    @scenario = Turk::Scenario.new(
      area_code: 'nl', end_year: 2050, autobalance: true)
  end

  context 'when choosing a more efficient fuel' do
    before do
      @scenario.share_of_wood_pellets_co_firing_coal = 1.0
    end

    it 'decreases the cost of producing electricity' do
      @scenario.costs_of_used_electricity.should decrease
    end
  end

  context 'when choosing a less efficient fuel' do
    before do
      @scenario.share_of_wood_pellets_co_firing_coal = 40.0
    end

    it 'increases the cost of producing electricity' do
      @scenario.costs_of_used_electricity.should increase
    end
  end
end
