class Scenario

  attr_reader :settings, :connection, :sliders

  def initialize(settings)
    @results = {}
    @sliders = {}
    @settings = settings
    @connection = Connection.new(self, @settings)
    @touched = false
  end

  def add_result(key)
    @results[key] = Result.new(key)
  end
  
  def set_slider(key, value)
    unless @sliders[key] == value
      @touched = true
      @sliders[key] = value
    end
  end
  
  def results
    @results
  end

  def result(key)
    if @results.has_key?(key)
      @results[key]
    else
      add_result(key)
      refresh!
      @results[key]
    end
  end

  def queries
    @results.keys
  end

  def refresh!
    @touched = false
    @connection.parse_results.each do |key, hash|
      result(key).update(hash.shift[1], hash.shift[1])
    end
  end

  def touched?
    @touched
  end

end