require 'spec_helper'

describe Result do

  describe "#value" do
    it "should return nil when now values have been given yet" do
      result = Result.new("foo")
      result.value.should be_nil
    end
    it "should update" do
      result = Result.new("foo")
      result.update(1,2)
      result.value.should == 2
      result.update(2,3)
      result.value.should == 3
    end
  end

  describe "#increase" do
    it "should return 0 when just started" do
      result = Result.new("foo")
      result.update(1,2)
      result.increase.should == 0
    end
    it "should return 1 when just updated with 1" do
      result = Result.new("foo")
      result.update(1,2)
      result.update(1,3)
      result.increase.should == 1
    end
  end

  describe "#decrease" do
    it "should be 0 when just started" do
      result = Result.new("foo")
      result.update(1,1)
      result.decrease.should == 0
    end
    it "should be -1 when just started" do
      result = Result.new("foo")
      result.update(1,2)
      result.update(1,1)
      result.decrease.should == 1
    end
  end

end