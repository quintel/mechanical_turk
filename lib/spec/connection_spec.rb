require 'spec_helper'

describe Connection do
  
  before(:each) do
    stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/new.json"). \
      to_return( :status => 200, 
                 :body => { 
                   "api_scenario" => {
                     " country" => 
                        "nl",
                        "end_year" => 2040, 
                        "id" => 26220, 
                        "region" => nil,
                        "use_fce" => false, 
                        "user_values" => {}
                      }
                    }
                )
  end
  
  describe "#fetch_session_id" do
  
    it "should return the id when a new scenario was created" do
      @connection = Connection.new
      @connection.fetch_session_id.should == 26220
    end
  
  end
  
  describe "#parse_results" do
    
  end
  
end