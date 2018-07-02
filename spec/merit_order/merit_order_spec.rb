# Spec tests to check if Step I of the Merit Order project with EnergieNederland behaves correctly
require 'spec_helper'

describe "Merit Order" do


  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        settings_enable_merit_order: 0
      })
  end

  context "Without using the merit order" do

    it "the full load hours of the cheapest five power plants should be greater than zero and less than 8760" do
      expect(@scenario.merit_order_nuclear_iii_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_coal_igcc_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_coal_chp_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
      expect(@scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table.value).to be_within(4379).of(4380)
    end
  end

  # Tests that the merit order calculation injects/overwrites the newly calculated demands
  # back into the model.
  context "Basic behavior" do

    it "Enabling/Disabling merit order should change the `use_merit_order_demands` flag" do
      # Test that enabling/disabling merit order works.

      # by default turned off:
      @scenario.use_merit_order_demands_enabled.future.should == 0

      # turning it on
      @scenario.settings_enable_merit_order = 1

      # only inject merit order from future:
      @scenario.use_merit_order_demands_enabled.future.should == 1
    end

    it "Enabling/Disabling merit order should change total electricity production" do
      # Test that enabling/disabling merit order works.

      # by default turned off:
      @scenario.total_electricity_produced.future_decrease.should == 0

      # turning it on
      @scenario.settings_enable_merit_order = 1

      # Attention: total_electricity_produced changes because FLH calculated by MO
      # are different than those from research
      @scenario.total_electricity_produced.should change
    end

    it "Enabling merit order should affect demand of (dispatchable) coal plants" do
      # turning it on
      @scenario.settings_enable_merit_order = 1

      @scenario.number_of_energy_power_ultra_supercritical_coal = 0
      @scenario.energy_power_ultra_supercritical_coal_demand.value.should == 0

      @scenario.number_of_energy_power_ultra_supercritical_coal = 14
      @scenario.energy_power_ultra_supercritical_coal_demand.should increase
    end

    # Import is possible alone if total installed capacity of dispatchables is too small
    # This is not the case in the start scenarion though.
    it "merit_order enabled and an import price of 500 euro/MWh, which makes import the most expensive based on marginal costs, should bring import back to zero" do
      @scenario.costs_imported_electricity = 500.0
      @scenario.settings_enable_merit_order = 1

      # Turning on merit order should reduce import to zero
      expect(@scenario.costs_of_imported_electricity.value).to be_within(100.0).of(0.0)
    end

    it "merit_order enabled should bring export back to zero" do
      @scenario.settings_enable_merit_order = 1

      # Turning on merit order should reduce export to zero
      expect(@scenario.primary_demand_of_exported_electricity.value).to be_within(100.0).of(0.0)
    end
  end

  describe 'Advanced behavior: second-order checks' do

    # With the settings_enable_merit_order enabled
    before(:each) do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        settings_enable_merit_order: 1,
        costs_imported_electricity: 500.0
      })
    end

    context "With merit order enabled" do

      it "adding a lot of energy_power_wind_turbine_offshore should lower full load hours of central production power plants" do
        @scenario.number_of_energy_power_wind_turbine_offshore = 50000
        expect(@scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table).to decrease
        expect(@scenario.merit_order_nuclear_ii_full_load_hours_in_merit_order_table).to decrease
        expect(@scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table).to decrease
      end

      it "increasing number_of_energy_power_wind_turbine_inland with 1 should not change total produced electricity" do
        @scenario.number_of_energy_power_wind_turbine_inland = 477

        # ONLY true if some dispatchables still have FLH > 0
        @scenario.total_electricity_produced.increase.should be_within(100.0).of(0.0)

        # should not give export
        expect(@scenario.primary_demand_of_exported_electricity.value).to be_within(100.0).of(0.0)
      end

      it "decreasing number_of_energy_power_wind_turbine_inland with 1 should not change total produced electricity" do
        @scenario.number_of_energy_power_wind_turbine_inland = 475
        @scenario.total_electricity_produced.increase.should be_within(100.0).of(0.0)

        # should not give export
        expect(@scenario.primary_demand_of_exported_electricity.value).to be_within(100.0).of(0.0)
      end
    end

    context "Changing fuel costs" do

      it "decreasing gas price should increase full load hours of gas power plants" do
        @scenario.costs_gas = 10
        expect(@scenario.merit_order_gas_ccgt_full_load_hours_in_merit_order_table).to increase
      end

      it "increasing the coal price should decrease full load hours of coal power plants" do
          @scenario.costs_coal = 200
          expect(@scenario.merit_order_coal_pwd_full_load_hours_in_merit_order_table).to decrease
      end

      it "increasing the cost of coal to 1000% should decrease the FLHs of coal plants to 0" do
        # Increasing coal cost by a lot...
        @scenario.costs_coal = 500

        # does descrease the demand of coal plants to zero
        @scenario.energy_power_supercritical_coal_demand.future.should == 0
      end

      it "merit_order disabled leaves demands of coal plants as they are" do
        @scenario.settings_enable_merit_order = 0

        @scenario.costs_coal = 500
        @scenario.energy_power_ultra_supercritical_coal_demand.future_increase.should == 0

      end
    end

  end
end
