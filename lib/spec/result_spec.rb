require 'spec_helper'

describe Result do
  
  let(:result){result = Result.new("foo")}

  describe "#value" do
    it "should return nil when now values have been given yet" do
      result.value.should be_nil
    end
    it "should update" do
      result.update(1,2)
      result.value.should == 2
      result.update(2,3)
      result.value.should == 3
    end
  end
  
  describe "#present" do
    it "should return nil when now values have been given yet" do
      result.present.should be_nil
    end
    it "should update" do
      result.update(1,2)
      result.present.should == 1
      result.update(2,3)
      result.present.should == 2
    end
  end

  describe "#future" do
    it "should return nil when now values have been given yet" do
      result.future.should be_nil
    end
    it "should update" do
      result.update(1,2)
      result.future.should == 2
      result.update(2,3)
      result.future.should == 3
    end
  end

  describe "#increase" do
    it "should raise Error when now values have been given yet" do
      expect { result.increase }.to raise_error
    end
    it "should raise Error when just started" do
      result.update(1,2)
      expect { result.increase }.to raise_error
    end
    it "should return 1 when just updated with 1" do
      result.update(1,2)
      result.update(1,3)
      result.increase.should == 1
    end
  end

  describe "#decrease" do
    it "should return nil when now values have been given yet" do
      expect { result.decrease }.to raise_error
    end
    it "should be 0 when just started" do
      result.update(1,1)
      expect { result.decrease }.to raise_error
    end
    it "should be -1 when just started" do
      result.update(1,2)
      result.update(1,1)
      result.decrease.should == 1
    end
  end

end