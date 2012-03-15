require 'spec_helper'

describe Scenario do
  
  let(:scenario){ Scenario.new(area: "foo", end_year: 1999) }
  
  describe "#settings" do
    
    it "should return area and end_year as attributes" do
      scenario.settings[:area].should == "foo"
      scenario.settings[:end_year].should == 1999
    end
    
  end
  
  describe "#query" do
    
    it "should not return nil when asked for a query" do
      stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/26220.json?result[]=dashboard_reduction_of_co2_emissions_versus_1990"). \
        to_return( :status => 200, 
                   :body => { 
                     "result" => {
                       "dashboard_reduction_of_co2_emissions_versus_1990" => [[2010,0.07816994645528763],[2040,0.07815237459188862]],
                       "total_co2_emissions" => [[2010,163019295904.0395],[2040,163016639038.29355]]
                     },
                     "settings" => {
                       " country" => 
                          "nl",
                          "end_year" => 2040, 
                          "id" => 26220, 
                          "region" => nil,
                          "use_fce" => false, 
                          "user_values" => {}
                        }
                      },
                      "errors" => []
                  )
      scenario.result("total_co2_emissions").value.should be 163016639038.29355
    end
    
  end
  
  describe "refresh!" do
    
    it "should refresh results" do
      puts scenario.refresh!
    end
    
  end
  
end