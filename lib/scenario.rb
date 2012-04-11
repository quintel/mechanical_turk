class Scenario

  attr_reader :settings, :connection, :inputs, :results

  def initialize(settings = {country: 'nl', end_year: '2040'}) 
    @results = {}
    @inputs = [{}]
    @settings = settings
    @connection = Connection.new(self, settings)
    @touched = false
  end

  def set_input(key, value)
    return if @inputs.last[key] == value rescue nil #in case nothing changed
    if untouched?
      new_inputs = {}
      new_inputs.merge!(@inputs.last) if @inputs.last
      new_inputs[key] = value
      @inputs << new_inputs
    else
      @inputs.last[key] = value
    end
    @touched = true
  end

  def current_inputs
    inputs.last
  end
  
  def previous_inputs
    inputs[-2]
  end

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
    connection.results.each do |key, hash|
      result(key).update(hash[2010], hash[settings[:end_year]])
    end
  end

  def touched?
    @touched
  end

  def untouched?
    !touched?
  end

  ## short-cuts

  def method_missing(name, *args, &block)
    send(:result, name.to_s)
  end

#######
private
#######

  def add_result(key)
    @results[key] = Result.new(key, self)
    @touched = true
  end


end