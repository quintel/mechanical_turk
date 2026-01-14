require_relative 'spec_helper'

describe Result do

  let(:result){result = Result.new("foo")}

  describe "#value" do
    it "should return nil when now values have been given yet" do
      expect(result.value).to be_nil
    end
    it "should update" do
      result.update(1,2)
      expect(result.value).to eq 2
      result.update(2,3)
      expect(result.value).to eq 3
    end
  end

  describe "#present" do
    it "should return nil when now values have been given yet" do
      expect(result.present).to be_nil
    end
    it "should update" do
      result.update(1,2)
      expect(result.present).to eq 1
      result.update(2,3)
      expect(result.present).to eq 2
    end
  end

  describe "#future" do
    it "should return nil when now values have been given yet" do
      expect(result.future).to be_nil
    end
    it "should update" do
      result.update(1,2)
      expect(result.future).to eq 2
      result.update(2,3)
      expect(result.future).to eq 3
    end
  end

  describe "#increase" do
    it "should raise Error when now values have been given yet" do
      expect { result.increase }.to raise_error(StandardError)
    end
    it "should raise Error when just started" do
      result.update(1,2)
      expect { result.increase }.to raise_error(StandardError)
    end
    it "should return 1 when just updated with 1" do
      result.update(1,2)
      result.update(1,3)
      expect(result.increase).to eq 1
    end
  end

  describe "#decrease" do
    it "should return nil when now values have been given yet" do
      expect { result.decrease }.to raise_error(StandardError)
    end
    it "should raise an error when just started" do
      result.update(1,1)
      expect { result.decrease }.to raise_error(StandardError)
    end
    it "should be -1 when just started" do
      result.update(1,2)
      result.update(1,1)
      expect(result.decrease).to eq 1
    end
  end

end
