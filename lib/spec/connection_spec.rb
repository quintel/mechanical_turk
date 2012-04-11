require 'spec_helper'

describe Connection do

  let(:connection){ connection = Connection.new(Scenario.new) }

  before(:each) do
    load 'webmock_stubs.rb'
  end

  describe "#fetch_session_id" do

    it "should return the id when a new scenario was created" do
      connection.fetch_session_id.should == 1
    end

    it "should pass the settings" do
      connection = Connection.new(nil, {country: 'de', end_year: 2037})
      connection.fetch_session_id.should == 1
    end

  end

  describe "(private method:) #parse(results)" do

    it "should parse results" do
      results = {"foo" => [[2010,1.0], [2040,2.0]], "bar" => [[2010,3.0],[2040,4.0]]}
      connection.send(:parse, results).should == \
        {"foo"=> {2010 => 1.0, 2040 => 2.0}, "bar"=> {2010 => 3.0, 2040 => 4.0}}
    end

  end

end