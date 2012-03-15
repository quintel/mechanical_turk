class Scenario

  attr_reader :settings, :connection
  
  def initialize(settings)
    @settings = settings
    @connection = Connection.new
    @results = {}
    add_result "total_co2_emissions"
  end
  
  def result(key)
    @results[key] || add_result(key)
  end
  
  def refresh!
    @connection.queries = @results.keys
    @connection.parse_results
  end

#######
private
#######

  def add_result(key)
    @results[key] = Result.new(key)
  end
  
end