class Result
  
  attr_reader :key, :future, :present
  
  alias :value :future
  
  def initialize(key)
    @key = key
  end
  
  def update(present, future)
    @future ? @previous = @future : @previous = future
    @future = future
    @present = present
  end
  
  def increase
    @future - @previous rescue nil
  end
  
  def decrease
    -increase rescue nil
  end
  
end