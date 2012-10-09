class Result

  attr_reader :key, :future, :present

  alias :value :future

  def initialize(key, scenario = nil)
    @key = key
    @scenario = scenario
  end

  def update(present, future)
    if @future
      @previous = @future
    end
    @future = future
    @present = present
  end

  def update_previous(previous)
    @previous = previous
  end

  # The absolute increase of the future compared to present
  def future_increase
    future - present
  end

  # The absolute decrease of the future compared to present
  def future_decrease
    -future_increase
  end

  # Absolute increase compared to *previous request*
  def increase
    future - previous
  end

  # Absolute decrease compared to *previous request*
  def decrease
    -increase
  end

#######
private
#######

  def previous
    @previous
  end

end
