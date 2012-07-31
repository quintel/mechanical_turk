

WebMock.stub_request(:get, Connection.base_uri + "/new.json"). \
  to_return( :status => 200,
             :body => {
               "scenario" => {
                    "area_code" => "nl",
                    "end_year" => 2040,
                    "id" => 1,
                    "region" => nil,
                    "use_fce" => false,
                    "user_values" => {}
                  }
                }
            )

WebMock.stub_request(:get, Connection.base_uri + "/new.json?settings%5Barea%5D=nl&settings%5Bend_year%5D=2040"). \
  to_return( :status => 200,
             :body => {
               "scenario" => {
                  "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {}
                  }
                }
            )

#Different settings
WebMock.stub_request(:get, Connection.base_uri + "/new.json?settings[area_code]=de&settings[end_year]=2037"). \
  to_return( :status => 200,
             :body => {
               "scenario" => {
                 "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {}
                  }
                }
            )

WebMock.stub_request(:get, Connection.base_uri + "/new.json"). \
  to_return( :status => 200,
             :body => {
               "scenario" => {
                  "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {}
                  }
                }
            )

# Request with foo and far
WebMock.stub_request(:get, Connection.base_uri + "/1.json?reset=true&result%5B0%5D=foo&result%5B1%5D=bar"). \
  to_return( :status => 200,
             :body => {
               "result" => {
                 "foo" => [[2010,1],[2040,2]],
                 "bar" => [[2010,3],[2040,4]]
               },
               "settings" => {
                 "area_code" => "nl",
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
WebMock.stub_request(:get, Connection.base_uri + "/1.json?reset=true&result%5B0%5D=foo"). \
  to_return( :status => 200,
             :body => {
               "result" => {
                 "foo" => [[2010,1],[2040,2]]
               },
               "settings" => {
                 "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {}
                  }
                },
                "errors" => []
            )

WebMock.stub_request(:get, Connection.base_uri + "/1.json?reset=true&input[250]=10&result[]=foo"). \
  to_return( :status => 200,
             :body => {
               "result" => {
                 "foo" => [[2010,11],[2040,12]]
               },
               "settings" => {
                 "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {}
                  }
                },
                "errors" => []
            )

WebMock.stub_request(:get, Connection.base_uri + "/1.json?reset=true&input%5B0%5D=10&input%5B1%5D=11&result%5B0%5D=foo"). \
  to_return( :status => 200,
             :body => {
               "result" => {
                 "foo" => [[2010,1],[2040,2]]
               },
               "settings" => {
                 "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {}
                  }
                },
                "errors" => []
            )

