require 'spec_helper'

describe "Buildings, Space Heating" do

  before(:each) do
    @scenario = Scenario.new(area_code: "nl", end_year: 2050)
  end

  context "for the start scenario" do

    # For every space heating technology, the number_of_units should go to #HHs when slider = 100%
    it "number of buildings_heating_gas_fired_heater should be ?" do
      @scenario.buildings_heating_gas_fired_heater_share = 100 #%
      @scenario.turk_number_of_buildings_heating_gas_fired_heater.value.should be_within(10.0).of(7349500.0)
    end

    it "number of number_of_buildings_heating_heat_pump_with_ts should be ?" do
      @scenario.buildings_heating_heat_pump_with_ts_share = 100 #%
      @scenario.turk_number_of_buildings_heating_heat_pump_with_ts.value.should be_within(10.0).of(7349500.0)
    end

    it "number of buildings_heating_gas_fired_heat_pump_share should be ?" do
      @scenario.buildings_heating_gas_fired_heat_pump_share = 100 #%
      @scenario.turk_number_of_buildings_heating_gas_fired_heat_pump.value.should be_within(10.0).of(7349500.0)
    end

  end

end
