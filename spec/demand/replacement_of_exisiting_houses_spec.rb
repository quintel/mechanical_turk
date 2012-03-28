# Example Spec that would apply for all countries
# Inspired on the issue with replacement of households
# Relevant slider #1
# Chart 57

describe "Replacement of existing houses" do

  before(:all) do
    @scenario = Scenario.new

    # store result of insulation savings before exisiting houses is changed
    @scenario.move_slider 337, 6.0
    savings_new_houses_before = @scenario.result("heating_savings_insulation_new_households_energetic")
    savings_old_houses_before = @scenario.result("extra_insulation_savings_households_energetic")
    
    # move slider 1
    @scenario.move_slider 1, 2.5
    
  end

  it "should not increase primary demand" do
    @scenario.primary_demand.increase.should be == 0
  end

  it "should decrease co2" do
    @scenario.co2.decrease.should be > 0
  end

  it "should decrease the heat demand for houses" do
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").decrease.should be > 0
  end

  it "should decrease the heat demand for houses between the min and max values" do
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").decrease.should be >  VALUE_IF_NO_HOUSES_REPLACED
    @scenario.result("heat_demand_including_electric_heating_in_use_of_final_demand_in_households").decrease.should be <  VALUE_IF_ALL_HOUSES_REPLACED
  end
  
  it "should increase the heat savings for new houses (if insulation of new houses > 0)" do
    @scenario.result("heating_savings_insulation_new_households_energetic") > savings_new_houses_before   
  end
  it "should decrease the heat savings for old houses (if insulation of old houses > 0)" do
    @scenario.result("extra_insulation_savings_households_energetic") < savings_old_houses_before   
  end
  
end
