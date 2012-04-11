require 'spec_helper'

describe Scenario do

  let(:scenario){ Scenario.new(area: "nl", end_year: 2040) }

  describe "#settings" do

    it "should return area and end_year as attributes" do
      scenario.settings[:area].should == "nl"
      scenario.settings[:end_year].should == 2040
    end

  end
  
  describe "#set_slider" do

    it "should remember the set_slider in @sliders" do
      scenario.set_slider 250, 10
      scenario.sliders.should have(1).slider
    end

    it "should send the slider with the value off to the api" do
      scenario.set_slider 250, 10
      scenario.refresh!
      scenario.connection.sliders.should == {250 => 10}
    end

  end

  describe "#refresh!" do
    
    it "should get values for all results" do
      load 'webmock_stubs.rb'
      scenario.add_result("foo")
      scenario.refresh!
      scenario.result("foo").value.should == 2.0
    end
    
  end

  describe "#result (without an explicit 'refresh!')" do

    it "should raise an error when asked for a non-existing result" do
      expect { scenario.result["jael_jablabla"] }.to raise_error
    end

    it "should return a value when asked for a query" do
      load 'webmock_stubs.rb'
      scenario.result("foo").value.should == 2.0
    end

  end

  describe "#touched" do

    it "should return false when it is a new scenario" do
      scenario.touched?.should be_false
    end
    
    it "should return true when a slider has been moved" do
      load 'webmock_stubs.rb'
      scenario.result("foo")
      scenario.set_slider 250, 10
      scenario.touched?.should be_true
    end

    it "should return false when a slider has not moved" do
      load 'webmock_stubs.rb'
      scenario.result("foo")
      scenario.set_slider 250, 10
      scenario.result("foo")
      scenario.set_slider 250, 10
      scenario.touched?.should be_true
    end

  end

  describe "set_slider" do
    
    it "should receive different results when a slider has been moved" do
      load 'webmock_stubs.rb'
      scenario.set_slider 250, 10
      scenario.result("foo").value.should == 12
    end
    
  end


end