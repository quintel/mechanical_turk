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

  def increase
    future - previous
  end

  def decrease
    -increase
  end

#######
private
#######

  def previous
    @previous ||= (
      @previous 
    )
  end

end