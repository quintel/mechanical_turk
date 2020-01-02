# Relevant sliders #661-671

require 'spec_helper'

describe "Flexibility" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1
    })
  end

    context "P2L (kerosene)" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        settings_enable_merit_order: 1,
        capacity_of_energy_power_wind_turbine_inland: 50000, # excess electricity
        bunkers_allocated_percentage_aviation: 100 # take all co2 of international aviation into account
      })
    end

     describe "In a scenario increasing the number of P2L (kerosene) units" do

       it "should decrease the electricity curtailed" do
         @scenario.capacity_of_flexibility_p2l_electricity = 100000

         expect(@scenario.electricity_curtailed).to decrease
       end

     end

      describe "In a scenario increasing the number of P2L (kerosene) units" do

       it "should decrease the electricity exported" do
         @scenario.capacity_of_flexibility_p2l_electricity = 100000

         expect(@scenario.electricity_exported).to decrease
       end

     end

     describe "In a scenario increasing the number of P2L (kerosene) units" do

      it "should decrease CO2 emissions" do
        @scenario.capacity_of_flexibility_p2l_electricity = 100000

        expect(@scenario.co2).to decrease
      end

     end
  end

  context "P2P (batteries)" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      capacity_of_energy_power_wind_turbine_inland: 30000 # excess electricity
    })
  end

   describe "In a scenario increasing the number of P2P units" do

     it "should decrease the electricity curtailed" do
       @scenario.households_flexibility_p2p_electricity_market_penetration = 20.0

       expect(@scenario.electricity_curtailed).to decrease
     end

   end

    describe "In a scenario increasing the number of P2P units" do

     it "should decrease the electricity exported" do
       @scenario.households_flexibility_p2p_electricity_market_penetration = 20.0

       expect(@scenario.electricity_exported).to decrease
     end

   end

    describe "In a scenario increasing the number of P2P units" do

     it "should decrease CO2 emissions" do
       @scenario.households_flexibility_p2p_electricity_market_penetration = 70.0

       expect(@scenario.co2).to decrease
     end

    end

  end

  context "P2P (electric cars)" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      capacity_of_energy_power_wind_turbine_inland: 30000 # excess electricity
    })
  end

   describe "In a scenario increasing the availability of electric cars" do

     it "should decrease the electricity curtailed" do
       @scenario.transport_car_using_electricity_availability = 20.0

       expect(@scenario.electricity_curtailed).to decrease
     end

   end

    describe "In a scenario increasing the availability of electric cars" do

     it "should decrease the electricity exported" do
       @scenario.transport_car_using_electricity_availability = 20.0

       expect(@scenario.electricity_exported).to decrease
     end

   end

    describe "In a scenario increasing the availability of electric cars" do

     it "should decrease CO2 emissions" do
       @scenario.transport_car_using_electricity_availability = 20.0

       expect(@scenario.co2).to decrease
     end

    end

  end

context "P2H for industry" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      capacity_of_energy_power_wind_turbine_inland: 30000 # excess electricity
    })
  end

   describe "In a scenario with excess electricity increasing the number of P2H units in the chemical sector" do

     it "should decrease the electricity curtailed" do
       @scenario.capacity_of_industry_chemicals_other_flexibility_p2h_electricity = 2500.0

       expect(@scenario.electricity_curtailed).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the chemical sector" do

     it "should decrease the electricity exported" do
       @scenario.capacity_of_industry_chemicals_other_flexibility_p2h_electricity = 2500.0

       expect(@scenario.electricity_exported).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the chemical sector" do

     it "should decrease CO2 emissions" do
       pending("ETSource #2172")
       @scenario.capacity_of_industry_chemicals_other_flexibility_p2h_electricity = 2500.0

       expect(@scenario.co2).to decrease
     end
    end

    describe "In a scenario with excess electricity increasing the number of P2H units in the chemical sector" do

     it "should decrease the gas use of that sector" do
       @scenario.capacity_of_industry_chemicals_other_flexibility_p2h_electricity = 2500.0

       expect(@scenario.final_demand_of_natural_gas_and_derivatives_in_other_chemical_industry_energetic).to decrease
     end
    end

   describe "In a scenario with excess electricity increasing the number of P2H units in the refineries sector" do

     it "should decrease the electricity curtailed" do
       @scenario.capacity_of_industry_chemicals_refineries_flexibility_p2h_electricity = 2500.0

       expect(@scenario.electricity_curtailed).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the refineries sector" do

     it "should decrease the electricity exported" do
       @scenario.capacity_of_industry_chemicals_refineries_flexibility_p2h_electricity = 2500.0

       expect(@scenario.electricity_exported).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the refineries sector" do

     it "should decrease CO2 emissions" do
       pending("ETSource #2172")
       @scenario.capacity_of_industry_chemicals_refineries_flexibility_p2h_electricity = 2500.0

       expect(@scenario.co2).to decrease
     end
    end

    describe "In a scenario with excess electricity increasing the number of P2H units in the refineries sector" do

     it "should decrease the gas use of that sector" do
       @scenario.capacity_of_industry_chemicals_refineries_flexibility_p2h_electricity = 2500.0

       expect(@scenario.final_demand_of_natural_gas_and_derivatives_in_refineries_industry_energetic).to decrease
     end
    end

     describe "In a scenario with excess electricity increasing the number of P2H units in the food sector" do

     it "should decrease the electricity curtailed" do
       @scenario.capacity_of_industry_other_food_flexibility_p2h_electricity = 1000.0

       expect(@scenario.electricity_curtailed).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the food sector" do

     it "should decrease the electricity exported" do
       @scenario.capacity_of_industry_other_food_flexibility_p2h_electricity = 1000.0

       expect(@scenario.electricity_exported).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the food sector" do

     it "should decrease CO2 emissions" do
       pending("ETSource #2172")
       @scenario.capacity_of_industry_other_food_flexibility_p2h_electricity = 1000.0

       expect(@scenario.co2).to decrease
     end
    end


    describe "In a scenario with excess electricity increasing the number of P2H units in the food sector" do

     it "should decrease the gas use of that sector" do
       @scenario.capacity_of_industry_other_food_flexibility_p2h_electricity = 1000.0

       expect(@scenario.final_demand_of_natural_gas_and_derivatives_in_food_industry_energetic).to decrease
     end
    end


    describe "In a scenario with excess electricity increasing the number of P2H units in the paper sector" do

     it "should decrease the electricity curtailed" do
       @scenario.capacity_of_industry_other_paper_flexibility_p2h_electricity = 400.0

       expect(@scenario.electricity_curtailed).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the paper sector" do

     it "should decrease the electricity exported" do
       @scenario.capacity_of_industry_other_paper_flexibility_p2h_electricity = 400.0

       expect(@scenario.electricity_exported).to decrease
     end
   end

    describe "In a scenario with excess electricity increasing the number of P2H units in the paper sector" do

     it "should decrease CO2 emissions" do
       pending("ETSource #2172")
       @scenario.capacity_of_industry_other_paper_flexibility_p2h_electricity = 400.0

       expect(@scenario.co2).to decrease
     end
    end


    describe "In a scenario with excess electricity increasing the number of P2H units in the paper sector" do

     it "should decrease the gas use of that sector" do
       @scenario.capacity_of_industry_other_paper_flexibility_p2h_electricity = 400.0

       expect(@scenario.final_demand_of_natural_gas_and_derivatives_in_paper_industry_energetic).to decrease
     end
    end

  end


  context "P2G" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      capacity_of_energy_power_wind_turbine_inland: 30000, # excess electricity
      transport_car_using_hydrogen_share: 20.0 #making sure there are hydrogen cars
    })
  end

   describe "In a scenario increasing the number of P2G units" do

     it "should decrease the electricity curtailed" do
       @scenario.capacity_of_energy_hydrogen_flexibility_p2g_electricity = 200.0

       expect(@scenario.electricity_curtailed).to decrease
     end

   end

    describe "In a scenario increasing the number of P2G units" do

     it "should decrease the electricity exported" do
       @scenario.capacity_of_energy_hydrogen_flexibility_p2g_electricity = 200.0

       expect(@scenario.electricity_exported).to decrease
     end

   end

    describe "In a scenario increasing the number of P2G units" do

     it "should decrease CO2 emissions" do
       @scenario.capacity_of_energy_hydrogen_flexibility_p2g_electricity = 2000.0

       expect(@scenario.co2).to decrease
     end

    end

  end

  context "Electricity Conservation" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      capacity_of_energy_power_wind_turbine_inland: 10000, # excess electricity
      transport_car_using_hydrogen_share: 20.0 #making sure there are hydrogen cars
    })
  end

   describe "Electricity should be conserved" do

     it "between excess production and storage" do
      expect(@scenario.turk_excess_electricity_storage_sum.value).to be_within(0.000001).of(@scenario.turk_excess_electricity_from_production.value)
     end

   end

  end

  context "Demand response heat pumps, buffer size" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, autobalance: true, inputs: {
      settings_enable_merit_order: 1,
      households_useful_demand_heat_per_person: 5.0, # excess heat demand
      households_useful_demand_hot_water_share: 5.0, # excess hot water demand
      households_flexibility_water_heating_buffer_size_heatpump_air_water_electricity: 0.0, # remove buffer
      households_flexibility_water_heating_buffer_size_heatpump_ground_water_electricity: 0.0, # remove buffer
      households_heater_heatpump_air_water_electricity_share: 100.0
    })
  end

   describe "In a scenario with deficits and 100"%" heat pump air increasing the space heating buffer size" do

     it "should decrease the deficits" do
      @scenario.households_flexibility_space_heating_buffer_size_heatpump_air_water_electricity = 250.0

      expect(@scenario.households_space_heater_heatpump_air_water_electricity_deficit).to decrease
     end

    end

   # 2019-06: After the curves update, there are no households water heater deficits anymore, which makes this spec redundant at the moment
   describe "In a scenario with deficits and 100"%" heat pump air increasing the water heating buffer size" do

     it "should decrease the deficits" do
       pending("2019-06: After the curves update, there are no households water heater deficits anymore, which makes this spec redundant at the moment")
      @scenario.households_flexibility_water_heating_buffer_size_heatpump_air_water_electricity = 250.0

      expect(@scenario.households_water_heater_heatpump_air_water_electricity_deficit).to decrease
     end

   end

  end


# Below is WIP for the flexibility order
# which requires an extension of the ETE ConverterApi



  #context "Flexibility order" do
  #before do
  #  @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
  #    settings_enable_merit_order: 1,
  #    households_flexibility_p2h_electricity_market_penetration: 20.0
  #  })
  #end

   #describe "Putting P2H first in the flexibility options" do

    # it "should decrease the hot water demand" do

       # increasing the amount of LNG that is regasified and fed into the gas grid
       #@scenario.update_flexibility_order = {order: ['p2h', 'p2g']}
    #   FlexibilityOrder.create!(order: ['p2h', 'p2g'])

       # should result in an increase in the number_of_units of regasification converters
     #  expect(@scenario.final_demand_of_heat_in_households).to decrease
     #end

   #end

  #end

end
