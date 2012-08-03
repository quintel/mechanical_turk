require 'spec_helper'

describe Turk::Connection do

  let(:connection){ connection = Turk::Connection.new(Turk::Scenario.new) }

  before(:each) do
    load 'webmock_stubs_v3.rb'
  end

  describe "#fetch_session_id" do

    it "should return the id when a new scenario was created" do
      connection.fetch_session_id.should == 1
    end

    it "should pass the settings" do
      connection = Turk::Connection.new(nil, {area_code: 'de', end_year: 2037})
      connection.fetch_session_id.should == 1
    end

  end

end
