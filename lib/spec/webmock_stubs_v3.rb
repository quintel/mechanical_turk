##
# Start a new scenario
#

WebMock.stub_request(:post, Connection.base_uri + ".json?scenario[source]=Mechanical%20Turk"). \
  to_return( :status => 200,
             :body => {
                  "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {},
                  "source" => "Mechanical Turk"
                }
            )

WebMock.stub_request(:post, Connection.base_uri + ".json?scenario[area_code]=nl&scenario[end_year]=2040&scenario[source]=Mechanical%20Turk"). \
  to_return( :status => 200,
             :body => {
                  "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {},
                  "source" => "Mechanical Turk"
                }
            )

WebMock.stub_request(:post, Connection.base_uri + ".json?scenario[area_code]=de&scenario[end_year]=2037&scenario[source]=Mechanical%20Turk"). \
  to_return( :status => 200,
             :body => {
                 "area_code" => "nl",
                  "end_year" => 2040,
                  "id" => 1,
                  "region" => nil,
                  "use_fce" => false,
                  "user_values" => {},
                  "source" => "Mechanical Turk"
                }
            )

##
# Working with an existing scenario
# Requesting a query called foo
#

WebMock.stub_request(:put, Connection.base_uri + "/1.json?reset=true&gqueries[]=foo&gqueries[]=bar&source=Mechanical%20Turk"). \
  to_return( :status => 200,
             :body => {
               "gqueries" => {
                 "foo" => {"present" => 1, "future" => 2, "unit" => "gold"},
                 "bar" => {"present" => 3, "future" => 4, "unit" => "silver"}
               },
               "scenario" => {
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

# Requesting a query called foo

WebMock.stub_request(:put, Connection.base_uri + "/1.json?reset=true&gqueries[]=foo&source=Mechanical%20Turk"). \
  to_return( :status => 200,
             :body => {
               "gqueries" => {
                 "foo" => {"present" => 1, "future" => 2, "unit" => "gold"}
               },
               "scenario" => {
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

# Setting the input 250 to 10, will 'cause' an increase of foo with 10
# (present and future)

WebMock.stub_request(:put, Connection.base_uri + "/1.json?reset=true&scenario[user_values][250]=10&gqueries[]=foo&source=Mechanical%20Turk"). \
  to_return( :status => 200,
             :body => {
               "gqueries" => {
                 "foo" => {"present" => 11, "future" => 12, "unit" => "gold"}
               },
               "scenario" => {
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

# User values and queries

WebMock.stub_request(:put, Connection.base_uri + "/1.json?gqueries%5B0%5D=foo&reset=true&scenario%5Buser_values%5D%5B0%5D=10&scenario%5Buser_values%5D%5B1%5D=11&source=Mechanical%20Turk"). \
  to_return( :status => 200,
             :body => {
               "gqueries" => {
                 "foo" => {"present" => 1, "future" => 2, "unit" => "gold"}
               },
               "scenario" => {
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

