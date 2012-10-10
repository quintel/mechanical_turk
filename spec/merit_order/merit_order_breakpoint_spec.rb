# Testing behavior of Merit Order extension with EnergieNederland 'Step I'
# which includes the injection of FLH from MO calculation back into the ETM.
# In particular, the graph calculation is interrupted at the dispatchable 
# power plants that feature in the MO using breakpoints. When the MO calculation
# has completed, the new FLH are injected in the MO plants and the graph 
# calculation is restarted.
require 'spec_helper'


#describe "merit order module", :pending => true do 
describe "merit order module" do 
  it "enabling/disabling" do
    # Test that enabling/disabling merit order works. Enabling merit order
    # will automatically increase total_electricity_produced, because import is
    # not taken into account in the MO currently.
    scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
    # by default turned off:
    scenario.use_merit_order_demands_enabled.present.should == 0
    scenario.use_merit_order_demands_enabled.future.should == 0
    scenario.total_electricity_produced.future_decrease.should == 0

    scenario.use_merit_order_demands = 1
    # only inject merit order from future:
    scenario.use_merit_order_demands_enabled.present.should == 0
    scenario.use_merit_order_demands_enabled.future.should == 1
    scenario.total_electricity_produced.future_decrease.should > 80_000_000_000

    scenario.use_merit_order_demands = 0
    # disabling again works:
    scenario.use_merit_order_demands_enabled.present.should == 0
    scenario.use_merit_order_demands_enabled.future.should == 0
    scenario.total_electricity_produced.future_decrease.should == 0
  end


  context "setting costs_coal to maximum number" do
    # Tests that the merit order calculation injects/overwrites the newly calculated demands
    # back into the model. Increasing the costs of coal brings the demand to 0, because it is
    # too expensive to produce. Instead it'll consume the energy from import/export (interconnector).

    # CK: I'm confused by this behavior! I would expect the import/export to stay constant WHATEVER
    # happens to the dispatchables. Their combined installed capacity will not change due to cost and
    # therefore they will contunue to cover the total demand.
    # In this specific case, the gas-plants will take over the load of the coal plants. 

    before(:each) do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
      @scenario.costs_coal = 1000
    end

    it "merit_order enabled sets coal plant demands to zero" do
      @scenario.use_merit_order_demands = 1
      @scenario.energy_power_ultra_supercritical_coal_demand.future.should == 0
      @scenario.interconnector_demand.future.should > 0
    end

    it "merit_order disabled leaves demands of coal plants as they are" do
      @scenario.use_merit_order_demands = 0
      @scenario.energy_power_ultra_supercritical_coal_demand.future_increase.should == 0
      @scenario.energy_power_ultra_supercritical_coal_demand.future.should > 0
      @scenario.interconnector_demand.future.should == 0
    end
  end


  describe 'slider: number_of_xxx' do
    # updating the number of wind turbines increases the total electricity produced. The additional energy produced
    # gets routed to the inversed_flexible link to energy_export_electricity. Merit Order calculation should not
    # have any significant effect to the calculation (except that NL produces more energy, as it's cheaper).
    before(:each) do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
      @scenario.use_merit_order_demands = 1
    end

    it "merit_order enabled: " do
      @scenario.number_of_wind_onshore_land = 10000
      @scenario.wind_turbine_inland_constant_link_value.should  increase
      @scenario.total_electricity_produced.future_increase.should  == 0
      @scenario.merit_order_inversed_flexible_link_value.should increase

      @scenario.number_of_wind_onshore_land = 0
      @scenario.wind_turbine_inland_constant_link_value.should  decrease
      @scenario.total_electricity_produced.should == 0
      @scenario.merit_order_inversed_flexible_link_value.should decrease
    end

    it "merit_order enabled: affects energy flow through coal plants but not interconnector" do
      @scenario.number_of_pulverized_coal = 0
      @scenario.energy_power_ultra_supercritical_coal_demand.should decrease
      @scenario.interconnector_demand.future.should == 0

      @scenario.number_of_pulverized_coal = 10
      @scenario.energy_power_ultra_supercritical_coal_demand.should increase
      @scenario.interconnector_demand.future_decrease.should == 0
    end

    # xit "merit_order enabled" do
    #   @scenario.use_merit_order_demands = 1
    #   # If merit order is enabled energy *does not* get routed to the inversed_flexible
    #   @scenario.interconnector_demand.future_increase.round.should     == 0
    #   @scenario.merit_order_inversed_flexible_link_value.future.should be_within(1_000_000_000).of(74_124_820_421)
    #   # full_load_hours are adjusted
    #   @scenario.merit_order_wind_turbines_full_load_hours_in_merit_order_table.future_increase.should be_within(20.0).of(150)
    #   @scenario.merit_order_wind_turbines_capacity_in_merit_order_table.future_decrease.should be_within(20).of(600)
    #   # demands and electricity production is adjusted
    #   @scenario.total_electricity_produced.future_decrease.should              be_within( 100_000_000).of( 5_670_000_000)
    #   @scenario.wind_turbine_inland_constant_link_value.future_decrease.should be_within( 100_000_000).of( 5_670_000_000)
    # end

    # xit "merit_order disabled" do
    #   @scenario.use_merit_order_demands = 0
    #   # If merit order is disabled energy *does* get routed to the inversed_flexible link
    #   @scenario.interconnector_demand.future_increase.round.should     == 0
    #   @scenario.merit_order_inversed_flexible_link_value.future_increase.should be_within(1_000_000_000).of(68_000_000_000)
    #   # demands and electricity production is adjusted
    #   @scenario.total_electricity_produced.future_decrease.should               be_within(100_000_000).of(5_670_000_000)
    #   @scenario.wind_turbine_inland_constant_link_value.future_decrease.should  be_within(100_000_000).of(5_670_000_000)
    #   # full_load_hours are adjusted
    #   @scenario.merit_order_wind_turbines_full_load_hours_in_merit_order_table.future_increase.should be_within(20.0).of(150)
    #   @scenario.merit_order_wind_turbines_capacity_in_merit_order_table.future_decrease.should        be_within(20).of(600)
    # end
  end

  # context "testing breakpoint system" do
  #   before(:each) do
  #     @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050)
  #     @scenario.use_merit_order_demands = 1
  #   end

  #   it "should increase full load hours of gas power plants when natural gas price decreases" do
  #     @scenario.merit_order_wind_turbines_full_load_hours_in_merit_order_table.future_increase.should == 0.0
  #     @scenario.merit_order_wind_turbines_capacity_in_merit_order_table.future_decrease.should == 0.0
  #     @scenario.total_electricity_produced.future_decrease.should == 0.0

  #     @scenario.number_of_wind_onshore_land = 150
  #     @scenario.merit_order_wind_turbines_full_load_hours_in_merit_order_table.future_increase.should be_within(20.0).of(150)
  #     @scenario.merit_order_wind_turbines_capacity_in_merit_order_table.future_decrease.should be_within(20).of(600)
  #     @scenario.total_electricity_produced.future_decrease.should be_within(500_000_000).of(5_670_000_000)

  #     @scenario.number_of_wind_onshore_land = 50
  #     @scenario.merit_order_wind_turbines_full_load_hours_in_merit_order_table.future_increase.should be_within(20.0).of(340)
  #     @scenario.merit_order_wind_turbines_capacity_in_merit_order_table.future_decrease.should be_within(20.0).of(880)
  #     @scenario.total_electricity_produced.future_decrease.should be_within(1_000_000_000).of(8_370_000_000)
  #   end
  # end

end
