WebMock.stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/new.json"). \
  to_return( :status => 200, 
             :body => { 
               "api_scenario" => {
                 " country" => 
                    "nl",
                    "end_year" => 2040, 
                    "id" => 1, 
                    "region" => nil,
                    "use_fce" => false, 
                    "user_values" => {}
                  }
                }
            )

WebMock.stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/new.json?area=nl&end_year=2040"). \
  to_return( :status => 200, 
             :body => { 
               "api_scenario" => {
                 " country" => 
                    "nl",
                    "end_year" => 2040, 
                    "id" => 1, 
                    "region" => nil,
                    "use_fce" => false, 
                    "user_values" => {}
                  }
                }
            )

WebMock.stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/new.json"). \
  to_return( :status => 200, 
             :body => { 
               "api_scenario" => {
                 " country" => 
                    "nl",
                    "end_year" => 2040, 
                    "id" => 1, 
                    "region" => nil,
                    "use_fce" => false, 
                    "user_values" => {}
                  }
                }
            )

# Request with foo and far 
WebMock.stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/1.json?result%5B0%5D=foo&result%5B1%5D=bar"). \
  to_return( :status => 200, 
             :body => { 
               "result" => {
                 "foo" => [[2010,1],[2040,2]],
                 "bar" => [[2010,3],[2040,4]]
               },
               "settings" => {
                 " country" => 
                    "nl",
                    "end_year" => 2040, 
                    "id" => 1,
                    "region" => nil,
                    "use_fce" => false, 
                    "user_values" => {}
                  }
                },
                "errors" => []
            )

# Request with foo 
WebMock.stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/1.json?result%5B0%5D=foo"). \
  to_return( :status => 200, 
             :body => { 
               "result" => {
                 "foo" => [[2010,1],[2040,2]]
               },
               "settings" => {
                 " country" => 
                    "nl",
                    "end_year" => 2040, 
                    "id" => 1, 
                    "region" => nil,
                    "use_fce" => false, 
                    "user_values" => {}
                  }
                },
                "errors" => []
            )

WebMock.stub_request(:get, "http://et-engine.com/api/v2/api_scenarios/1.json?inputs[250]=10&result%5B0%5D=foo"). \
  to_return( :status => 200, 
             :body => { 
               "result" => {
                 "foo" => [[2010,11],[2040,12]]
               },
               "settings" => {
                 " country" => 
                    "nl",
                    "end_year" => 2040, 
                    "id" => 1, 
                    "region" => nil,
                    "use_fce" => false, 
                    "user_values" => {}
                  }
                },
                "errors" => []
            )
