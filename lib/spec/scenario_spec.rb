require 'spec_helper'

describe Scenario do

  let(:scenario){ Scenario.new(area: "nl", end_year: 2040) }

  describe "#settings" do

    it "should return area and end_year as attributes" do
      scenario.settings[:area].should == "nl"
      scenario.settings[:end_year].should == 2040
    end

    it "should return area and end_year as attributes" do
      scenario = Scenario.new(area: "de", end_year: 2037)
      scenario.settings[:area].should == "de"
      scenario.settings[:end_year].should == 2037
    end

  end
  
  describe "#set_input" do

    it "should remember the set_input in @inputs" do
      scenario.set_input 250, 10
      scenario.inputs.should have(1).input
    end

    it "should send the input with the value off to the api" do
      scenario.set_input 250, 10
      scenario.refresh!
      scenario.connection.inputs.should == {250 => 10}
    end

  end
  
  describe "#refresh!" do
    
    it "should update values for all results" do
      load 'webmock_stubs.rb'
      scenario.result("foo")
      scenario.refresh!
      scenario.result("foo").present.should == 1.0
      scenario.result("foo").value.should == 2.0
      scenario.result("foo").future.should == 2.0
    end

    it "should update values for all results *a second time*" do
      load 'webmock_stubs.rb'
      scenario.result("foo").present.should == 1.0
      scenario.set_input 250, 10
      scenario.refresh!.should == {"foo"=>{2010=>11.0, 2040=>12.0}}
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
    
    it "should resturn a proper increase of the result after having updated the sliders" do
      load 'webmock_stubs.rb'
      scenario.result("foo").value.should == 2
      scenario.set_input 250, 10
      scenario.result("foo").increase.should == 10.0
    end

  end

  describe "#touched?" do

    it "should return false when it is a new scenario" do
      scenario.touched?.should be_false
    end

    it "should return true when a input has been moved" do
      load 'webmock_stubs.rb'
      scenario.result("foo")
      scenario.set_input 250, 10
      scenario.touched?.should be_true
    end

    it "should return false when a new query has been added (because that one should update itself)" do
      load 'webmock_stubs.rb'
      scenario.result("foo")
      scenario.touched?.should be_false
    end

    it "should return false when a input has not moved" do
      load 'webmock_stubs.rb'
      scenario.result("foo")
      scenario.set_input 250, 10
      scenario.result("foo")
      scenario.set_input 250, 10
      scenario.touched?.should be_false
    end

  end

  describe "#set_input" do
    
    it "should receive different results when a input has been moved" do
      load 'webmock_stubs.rb'
      scenario.set_input 250, 10
      scenario.result("foo").value.should == 12
    end
    
  end
  
  describe "#primary_demand and other short-cuts" do
    
    it "should be possible to use short cut results!" do
      load 'webmock_stubs.rb'
      scenario.foo.value.should == 2
      scenario.foo.should be scenario.result("foo")
    end
    
  end

end