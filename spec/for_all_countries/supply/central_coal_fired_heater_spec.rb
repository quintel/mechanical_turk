# Example Spec that would apply for all countries
# This checks whether relevant dashboard items behave as expected.
# This check also tests the qualitative behavior of (currently only one)
# gqueries that build a chart.

# Inspired on etmodel issue #618
# Relevant chart #42
# Relevant slider #430

describe "Central coal-fired heater" do

  before(:all) do
    @scenario = Scenario.new
    @scenario.move_slider 430, 56.5 #?! is this value not to high for other countries/provinces?
  end

  it "should increase primary demand" do
    @scenario.primary_demand.increase.should be > 0
  end

  it "should increase import" do
    #?! Better if check (through a gquery) whether area has own coal production!
    @scenario.import.increase.should be > 0
  end

  it "should increase co2" do
    @scenario.co2.increase.should be > 0
  end

  it "should not increase footprint" do
    @scenario.footprint.increase.should == 0
  end

  it "should decrease footprint" do
    @scenario.footprint.increase.should be < 0
  end

  it "should increase the fossile energy for heat and cold production" do
    @scenario.result("fossil_energy_used_for_heat_and_cold_production").increase.should be > 0
  end

end
