class Result
  
  attr_reader :key
  
  def initialize(key)
    @key = key
  end
  
  def update(present, future)
    @future ? @previous = @future : @previous = future
    @future = future
    @present = present
  end
  
  def value
    @future
  end
  
  def increase
    @future - @previous
  end
  
  def decrease
    -increase
  end
  
end