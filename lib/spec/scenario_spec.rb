require_relative 'spec_helper'

describe Turk::Scenario do

  let(:scenario){ Turk::Scenario.new(area_code: "nl", end_year: 2040) }

  before(:each) do
    load File.expand_path('webmock_stubs_v3.rb', __dir__)
  end

  describe "#settings" do

    it "should return area and end_year as attributes" do
      expect(scenario.settings[:area_code]).to eq "nl"
      expect(scenario.settings[:end_year]).to eq 2040
    end

    it "should return area and end_year as attributes" do
      scenario = Turk::Scenario.new(area_code: "de", end_year: 2037)
      expect(scenario.settings[:area_code]).to eq "de"
      expect(scenario.settings[:end_year]).to eq 2037
    end

  end

  describe "#inputs" do

    it "should contain an empty list when nothing has been set" do
      expect(scenario.inputs.length).to eq 1
      expect(scenario.inputs.last.length).to eq 0
    end

  end

  describe "#current_inputs" do
    it "should return the latest from the inputs stack" do
      allow(scenario).to receive(:inputs).and_return([{},
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11},
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11, "number_of_energy_power_combined_cycle_coal" => 12}])
      expect(scenario.current_inputs).to eq({"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11, "number_of_energy_power_combined_cycle_coal" => 12})
    end
  end

  describe "#previous_inputs" do
    it "should return the previous from the inputs stack" do
      allow(scenario).to receive(:inputs).and_return([{},
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11},
                                         {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11, "number_of_energy_power_combined_cycle_coal" => 12}])
      expect(scenario.previous_inputs).to eq({"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11})
    end
  end

  describe "#set key" do

    it "should remember the key in @inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      expect(scenario.inputs).to eq([{},{"number_of_energy_power_ultra_supercritical_coal" => 10}])
    end

    it "should remember multiple key in @inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_ccs_coal = 11
      expect(scenario.inputs).to eq([{},{"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11}])
    end

    it "should remember former other inputs after being 'touched'" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_ccs_coal = 11
      scenario.instance_variable_set(:@touched, false)
      scenario.number_of_energy_power_combined_cycle_coal = 12
      expect(scenario.inputs.last).to eq({"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11, "number_of_energy_power_combined_cycle_coal" => 12})
    end

    it "should have a history of inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_ccs_coal = 11
      scenario.instance_variable_set(:@touched, false)
      scenario.number_of_energy_power_combined_cycle_coal = 12
      expect(scenario.inputs).to eq([{},
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11},
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11, "number_of_energy_power_combined_cycle_coal" => 12}])
    end

    it "should have a history of inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_ccs_coal = 11
      scenario.result("foo").value
      scenario.number_of_energy_power_combined_cycle_coal = 12
      expect(scenario.inputs).to eq([{},
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11},
                                 {"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11, "number_of_energy_power_combined_cycle_coal" => 12}])
    end

    it "should be able to ask for the previous version of the inputs" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.number_of_energy_power_ultra_supercritical_ccs_coal = 11
      scenario.instance_variable_set(:@touched, false)
      scenario.number_of_energy_power_combined_cycle_coal = 12
      expect(scenario.inputs[-2]).to eq({"number_of_energy_power_ultra_supercritical_coal" => 10, "number_of_energy_power_ultra_supercritical_ccs_coal" => 11})
    end

  end

  describe "#refresh!" do

    it "should update values for all results" do
      scenario.result("foo")
      scenario.refresh!
      expect(scenario.result("foo").present).to eq 1.0
      expect(scenario.result("foo").value).to eq 2.0
      expect(scenario.result("foo").future).to eq 2.0
    end

    it "should update values for all results *a second time*" do
      expect(scenario.result("foo").future).to eq 2.0
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      expect(scenario.result("foo").future).to eq 12.0
    end

  end

  describe "#result (without an explicit 'refresh!')" do

    it "should raise an error when asked for a non-existing result" do
      expect { scenario.result("unknown") }.to raise_error(Turk::MissingQuery)
    end

    it "should return a value when asked for a query" do
      expect(scenario.result("foo").value).to eq 2.0
    end

    it "should return a proper increase of the result after having updated the sliders" do
      expect(scenario.result("foo").value).to eq 2
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      expect(scenario.result("foo").increase).to eq 10.0
    end

    it "should return a proper increase of the result after having updated the sliders *without explicitly calling it before*" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      expect(scenario.result("foo").increase).to eq 10.0
    end

  end

  describe "#touched?" do

    it "should return false when it is a new scenario" do
      expect(scenario.touched?).to be false
    end

    it "should return true when a input has been set" do
      scenario.result("foo")
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      expect(scenario.touched?).to be true
    end

    it "should return false when a new query has been added (because that one should update itself)" do
      scenario.result("foo")
      expect(scenario.touched?).to be false
    end

    it "should return false when a input has not moved" do
      scenario.result("foo")
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      scenario.result("foo")
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      expect(scenario.touched?).to be false
    end

  end

  describe "#set key" do

    it "should receive different results when a input has been moved" do
      scenario.number_of_energy_power_ultra_supercritical_coal = 10
      expect(scenario.result("foo").value).to eq 12
    end

  end

  describe "#short-cuts for 'result'" do

    it "should be possible to use short cut results!" do
      expect(scenario.foo.value).to eq 2
      expect(scenario.foo).to be scenario.result("foo")
    end

    it "should be possible to use abbreviated short cuts" do
      expect(scenario).to receive(:result).with("total_co2_emissions")
      scenario.co2
    end

  end

end
