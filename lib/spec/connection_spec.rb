require 'spec_helper'

describe Connection do

  let(:connection){ connection = Connection.new }

  before(:each) do
    load 'webmock_stubs.rb'
  end

  describe "#fetch_session_id" do

    it "should return the id when a new scenario was created" do
      connection.fetch_session_id.should == 1
    end

  end

  describe "#parse_result(key)" do

    it "should parse a the result of a query" do
      connection.stub(:results).and_return({"foo" => [[2010,1.0],[2040,2.0]]})
      connection.parse_result("foo").should == {2010 => 1.0, 2040 => 2.0}
    end

    it "should raise an error if the key does not exist in results" do
      connection.stub(:results).and_return({"foo" => [[2010,1.0],[2040,2.0]]})
      expect { connection.parse_result("bar") }.to raise_error
    end
    
  end

  describe "#parse_results" do

    it "should parse results" do
      connection.stub(:results).and_return \
        ({"foo" => [[2010,1.0], [2040,2.0]], "bar" => [[2010,3.0],[2040,4.0]]})
      connection.queries = ["foo","bar"]
      connection.parse_results.should == \
        {"foo"=> {2010 => 1.0, 2040 => 2.0}, "bar"=> {2010 => 3.0, 2040 => 4.0}}
    end

    it "should integrate return *all* the queries that have been set" do
      connection.queries = ["foo","bar"]
      connection.parse_results.should == \
        {"foo"=> {2010 => 1.0, 2040 => 2.0}, "bar"=> {2010 => 3.0, 2040 => 4.0}}
    end

  end

  describe "#parse_pair(data)" do

    it "should parse data" do
      data = [[2010, [1.0]], [2040, [1.0]]]
      connection.parse_pair(data).should == { 2010 => 1, 2040 => 1 }
    end

    it "should raise an error if data is malformatted" do
      data = [[2010, 1.0]]
      expect { connection.parse_pair(data) }.to raise_error
    end

  end

  describe "#parse_single_value(data)" do

    it "should parse a single value when it is in an array" do
      connection.parse_single_value([1.0]).should == 1.0
    end

    it "should parse a single value when not in an array" do
      connection.parse_single_value(1.0).should == 1.0
    end

  end

end