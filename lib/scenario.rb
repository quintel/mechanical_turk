class Scenario

  attr_reader :settings, :connection, :inputs

  def initialize(settings = {country: 'nl', end_year: '2040'}) 
    @results = {}
    @inputs = {}
    @settings = settings
    @connection = Connection.new(self, settings)
    @touched = false
  end

  def set_input(key, value)
    unless @inputs[key] == value
      @touched = true
      @inputs[key] = value
    end
  end

  def results
    @results
  end

  # provides the user 
  def result(key)
    add_result(key) unless @results[key]
    refresh! if touched?
    @results[key]
  end
  
  def track(keys)
    keys.each do |key|
      add_result(key)
    end
  end

  def queries
    @results.keys
  end

  def refresh!
    @touched = false
    connection.parse_results.each do |key, hash|
      result(key).update(hash[2010], hash[settings[:end_year]])
    end
    connection.parse_results
  end

  def touched?
    @touched
  end

  ## short-cuts

  def method_missing(name, *args, &block)
    send(:result, name.to_s)
  end

#######
private
#######

  def add_result(key)
    @results[key] = Result.new(key)
    @touched = true
  end


end