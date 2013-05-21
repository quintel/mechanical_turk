# Testing basic behavior of the Merit Order calculation
require 'spec_helper'

describe "merit order module" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end

  describe "for the start scenario" do

    it "the full load hours of the cheapest five power plants should be greater than zero and less than 8760" do
      expect(@scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_coal_igcc_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_coal_chp_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
    end
  end

  context "when removing power plants" do

    xit "the full load hours of a power plant should become zero if the number of units becomes zero" do
      @scenario.number_of_energy_power_combined_cycle_network_gas = 0
      expect(@scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.future).to be == 0.0

      @scenario.number_of_energy_power_nuclear_gen3_uranium_oxide = 0
      expect(@scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table.value).to be == 0.0

      @scenario.number_of_energy_power_ultra_supercritical_coal = 0
      expect(@scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.value).to be == 0.0
    end
  end

  context "when adding wind power" do

    xit "should lower full load hours of central production power plants" do
      @scenario.number_of_energy_power_wind_turbine_offshore = 4000
      expect(@scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table).to decrease
      expect(@scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table).to decrease
      expect(@scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table).to decrease
    end
  end

  context "when fuel costs change" do

    xit "should increase full load hours of gas power plants when natural gas price decreases" do
      @scenario.costs_gas = -50
      expect(@scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table).to increase
    end

    xit "should decrease full load hours of coal power plants when coal price increases" do
        @scenario.costs_coal = 300
        expect(@scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table).to decrease
    end
  end

end
