require_relative 'spec_helper'

describe Turk::Connection do

  let(:connection){ connection = Turk::Connection.new(Turk::Scenario.new) }

  before(:each) do
    load File.expand_path('webmock_stubs_v3.rb', __dir__)
  end

  describe "#fetch_session_id" do

    it "should return the id when a new scenario was created" do
      expect(connection.fetch_session_id).to eq 1
    end

    it "should pass the settings" do
      connection = Turk::Connection.new(nil, {area_code: 'de', end_year: 2037})
      expect(connection.fetch_session_id).to eq 1
    end

  end

end
