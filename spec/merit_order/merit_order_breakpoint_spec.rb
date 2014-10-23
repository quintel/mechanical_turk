# Spec tests to check if Step I of the Merit Order project with EnergieNederland behaves correctly
require 'spec_helper'

describe "Merit Order" do
  # Tests that the merit order calculation injects/overwrites the newly calculated demands
  # back into the model.
  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  end
  
  xit "enabling/disabling merit order" do
    # Test that enabling/disabling merit order works.

    # by default turned off:
    @scenario.use_merit_order_demands_enabled.present.should == 0
    @scenario.use_merit_order_demands_enabled.future.should == 0
    @scenario.total_electricity_produced.future_decrease.should == 0

    # turning it on
    @scenario.use_merit_order_demands = 1

    # only inject merit order from future:
    @scenario.use_merit_order_demands_enabled.present.should == 0
    @scenario.use_merit_order_demands_enabled.future.should == 1
    @scenario.final_demand_of_electricity.future_increase.should == 0
    
    # Attention: total_electricity_produced changes because FLH calculated by MO 
    # are different than those from research
    @scenario.total_electricity_produced.should change

    # MV_HV network trafor demand should not change as it sits left of the MO dispatchable plants.
    @scenario.energy_power_transformer_mv_hv_electricity_demand.future_increase.should == 0

    @scenario.use_merit_order_demands = 0
    # disabling gives the same results again:
    @scenario.use_merit_order_demands_enabled.present.should == 0
    @scenario.use_merit_order_demands_enabled.future.should == 0
    @scenario.total_electricity_produced.future_decrease.should == 0
    @scenario.final_demand_of_electricity.future_increase.should == 0
  end


  # Import is possible alone if total installed capacity of dispatchables is too small
  # This is not the case in the start scenarion though.
  xit "merit_order enabled should bring import back to zero" do
    @scenario.use_merit_order_demands = 1

    # Turning on merit order should reduce interconnector_demand to zero
    @scenario.interconnector_demand.future.should == 0
  end

  xit "merit_order enabled should bring export back to zero" do
    @scenario.use_merit_order_demands = 1

    # Turning on merit order should reduce export to zero
    @scenario.primary_demand_of_exported_electricity.future.should == 0
  end

  xit "increasing the cost of coal to 1000% AND increasing the number of oil plants to 29 should decrease the number of coal plants to 0" do
    @scenario.use_merit_order_demands = 1

    # Increasing coal cost by a lot...
    @scenario.costs_coal = 1000

    # does not yet descrease the coal plants to zero
    @scenario.energy_power_ultra_supercritical_coal_demand.future.should > 0

    # ... we need more of other (cheaper) plants.
    @scenario.number_of_energy_power_ultra_supercritical_crude_oil = 29
    @scenario.energy_power_ultra_supercritical_coal_demand.future.should == 0

    # now we increase price of oil, and coal plants are used again.
    @scenario.costs_oil = 900
    @scenario.energy_power_ultra_supercritical_coal_demand.future.should > 0
  end

  xit "merit_order disabled leaves demands of coal plants as they are" do
    @scenario.use_merit_order_demands = 0

    @scenario.costs_coal = 1000
    @scenario.energy_power_ultra_supercritical_coal_demand.future_increase.should == 0
    @scenario.energy_power_ultra_supercritical_coal_demand.future.should > 0
    # No energy is imported in the standard scenario
    @scenario.interconnector_demand.future.should == 0
  end


  describe 'slider: number_of_xxx' do

    before(:each) do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        use_merit_order_demands: 0
      })
    end

    xit "merit_order disabled: changing numbers of a volatile source" do
      @scenario.number_of_energy_power_wind_turbine_inland = 10000
      @scenario.wind_turbine_inland_constant_link_value.should  increase
      @scenario.total_electricity_produced.should               increase
      # export should increase
      @scenario.merit_order_inversed_flexible_link_value.should increase

      @scenario.number_of_energy_power_wind_turbine_inland = 0
      @scenario.wind_turbine_inland_constant_link_value.should  decrease
      @scenario.total_electricity_produced.should               decrease
      @scenario.merit_order_inversed_flexible_link_value.should decrease
    end

    # With the use_merit_order_demands enabled, the total production should not be affected by increment of number of
    # wind turbines
    before(:each) do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        use_merit_order_demands: 1
      })
    end

    xit "merit_order enabled: increasing number_of_energy_power_wind_turbine_inland with 1 should not change total produced electricity" do
      @scenario.number_of_energy_power_wind_turbine_inland = 361
      @scenario.wind_turbine_inland_constant_link_value.should  increase
      # ONLY true if some dispatchables still have FLH > 0
      @scenario.total_electricity_produced.future_increase.should == 0

      # should not give export
      @scenario.primary_demand_of_exported_electricity.future.should == 0
    end

    xit "merit_order enabled: decreasing number_of_energy_power_wind_turbine_inland with 1 should not change total produced electricity" do
      @scenario.number_of_energy_power_wind_turbine_inland = 359
      @scenario.wind_turbine_inland_constant_link_value.should  decrease
      @scenario.total_electricity_produced.future_increase.should == 0

      # should not give export
      @scenario.primary_demand_of_exported_electricity.future.should == 0
    end

    xit "merit_order enabled: affects demand of (dispatchable) coal plants and interconnector" do
      @scenario.number_of_energy_power_ultra_supercritical_coal = 0
      @scenario.energy_power_ultra_supercritical_coal_demand.value.should == 0

      @scenario.number_of_energy_power_ultra_supercritical_coal = 14
      @scenario.energy_power_ultra_supercritical_coal_demand.should increase
    end
  end
end
