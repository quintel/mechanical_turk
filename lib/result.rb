class Result
  
  attr_reader :key, :future, :present
  
  alias :value :future
  
  def initialize(key)
    @key = key
  end
  
  def update(present, future)
    if @future
      @previous = @future 
    end
    @future = future
    @present = present
  end
  
  def increase
    raise "Cannot calculate an increase, since there is no previous value \-
           (please call this result twice to calculate an increase!)" if @previous.nil?
    @future - @previous
  end
  
  def decrease
    raise "Cannot calculate an increase, since there is no previous value \-
           (please call this result twice to calculate an increase!)" if @previous.nil?
    -increase
  end
  
end