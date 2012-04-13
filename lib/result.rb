class Result

  attr_reader :key, :future, :present

  alias :value :future

  def initialize(key, scenario = nil)
    @key = key
    @scenario = scenario
  end

  def update(present, future)
    puts "UPDATING now and future of #{@key} with: #{present}, #{future}" if @debug
    if @future
      @previous = @future 
    end
    @future = future
    @present = present
  end

  def update_previous(previous)
    puts "UPDATING previous of #{@key} with: #{previous}" if @debug
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
    @previous
  end

end