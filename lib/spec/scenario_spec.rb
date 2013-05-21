require 'spec_helper'

describe Turk::Scenario do

  let(:scenario){ Turk::Scenario.new(area_code: "nl", end_year: 2040) }

  before(:each) do
    load 'webmock_stubs_v3.rb'
  end

  describe "#settings" do

    it "should return area and end_year as attributes" do
      scenario.settings[:area_code].should == "nl"
      scenario.settings[:end_year].should == 2040
    end

    it "should return area and end_year as attributes" do
      scenario = Turk::Scenario.new(area_code: "de", end_year: 2037)
      scenario.settings[:area_code].should == "de"
      scenario.settings[:end_year].should == 2037
    end

  end

  describe "#inputs" do

    it "should contain an empty list when nothing has been set" do
      scenario.inputs.should have(1).list
      scenario.inputs.last.should have(0).inputs
    end

  end

  describe "#current_inputs" do
    it "should return the latest from the inputs stack" do
      scenario.stub(:inputs).and_return([{},
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11}, 
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11, "number_of_energy_power_combined_cycle_coal" => 12}])
      scenario.current_inputs.should == {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11, "number_of_energy_power_combined_cycle_coal" => 12}
    end
  end

  describe "#previous_inputs" do
    it "should return the previous from the inputs stack" do
      scenario.stub(:inputs).and_return([{},
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11}, 
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11, "number_of_energy_power_combined_cycle_coal" => 12}])
      scenario.previous_inputs.should == {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11}
    end
  end

  describe "#set key" do

    it "should remember the key in @inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.inputs.should == [{},{"number_of_energy_power_ultra_supercritical_coal" => 10}]
    end

    it "should remember multiple key in @inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_coal_ccs = 11
      scenario.inputs.should == [{},{"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11}]
    end

    it "should remember former other inputs after being 'touched'" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_coal_ccs = 11
      scenario.instance_variable_set(:@touched, false)
      scenario.number_of_energy_power_combined_cycle_coal = 12
      scenario.inputs.last.should == {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11, "number_of_energy_power_combined_cycle_coal" => 12}
    end

    it "should have a history of inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_coal_ccs = 11
      scenario.instance_variable_set(:@touched, false)
      scenario.number_of_energy_power_combined_cycle_coal = 12
      scenario.inputs.should == [{},
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11}, 
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11, "number_of_energy_power_combined_cycle_coal" => 12}]
    end

    it "should have a history of inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_coal_ccs = 11
      scenario.result("foo").value
      scenario.number_of_energy_power_combined_cycle_coal = 12
      scenario.inputs.should == [{},
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11}, 
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11, "number_of_energy_power_combined_cycle_coal" => 12}]
    end

    it "should be able to ask for the previous version of the inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_coal_ccs = 11
      scenario.instance_variable_set(:@touched, false)
      scenario.number_of_energy_power_combined_cycle_coal = 12
      scenario.inputs[-2].should == {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_coal_ccs" => 11}
    end

  end

  describe "#refresh!" do

    it "should update values for all results" do
      scenario.result("foo")
      scenario.refresh!
      scenario.result("foo").present.should == 1.0
      scenario.result("foo").value.should == 2.0
      scenario.result("foo").future.should == 2.0
    end

    it "should update values for all results *a second time*" do
      scenario.result("foo").future.should == 2.0
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.result("foo").future.should == 12.0
    end

  end

  describe "#result (without an explicit 'refresh!')" do

    it "should raise an error when asked for a non-existing result" do
      expect { scenario.result("unknown") }.to raise_error(Turk::MissingQuery)
    end

    it "should return a value when asked for a query" do
      scenario.result("foo").value.should == 2.0
    end

    it "should return a proper increase of the result after having updated the sliders" do
      scenario.result("foo").value.should == 2
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.result("foo").increase.should == 10.0
    end

    it "should return a proper increase of the result after having updated the sliders *without explicitly calling it before*" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.result("foo").increase.should == 10.0
    end

  end

  describe "#touched?" do

    it "should return false when it is a new scenario" do
      scenario.touched?.should be_false
    end

    it "should return true when a input has been set" do
      scenario.result("foo")
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.touched?.should be_true
    end

    it "should return false when a new query has been added (because that one should update itself)" do
      scenario.result("foo")
      scenario.touched?.should be_false
    end

    it "should return false when a input has not moved" do
      scenario.result("foo")
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.result("foo")
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.touched?.should be_false
    end

  end

  describe "#set key" do

    it "should receive different results when a input has been moved" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.result("foo").value.should == 12
    end

  end

  describe "#short-cuts for 'result'" do

    it "should be possible to use short cut results!" do
      scenario.foo.value.should == 2
      scenario.foo.should be scenario.result("foo")
    end

    it "should be possible to use abbreviated short cuts" do
      scenario.should_receive(:result).with("total_co2_emissions")
      scenario.co2
    end

  end

end
