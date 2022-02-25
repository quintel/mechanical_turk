# Testing the external coupling input statements for the steel, fertilizer, refinery and other chemical sector.

require 'spec_helper'

describe "External coupling" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1
    })
  end

  # Testing the external inputs and effects on the energy graph for the refinery sector

  context "External coupling steel sector" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      external_coupling_industry_metal_steel_external_coupling_share: 100.0 # steel sectore modelled using external input
    })
  end

   describe "In a scenario with 100% external input in the steel sector" do

     it "all steel demand should be modelled by the external coupling node" do
       # with an error margin of 1.0E-12
       margin = 1.0E-12

       @scenario.industry_steel_external_coupling_node_production_demand.value.should be_within(margin * @scenario.industry_steel_production_demand.value).of(@scenario.industry_steel_production_demand.value)
     end
   end

    describe "In a scenario with 100% external input in the steel sector increasing demand" do

     it "should increase demand compared to preset demand" do
       @scenario.external_coupling_industry_metal_steel_total_demand = 150.0

       expect(@scenario.industry_steel_external_coupling_node_production_demand).to increase
     end
   end

    describe "In a scenario increasing the availability of CCUS" do

     it "should increase the captured CO2 emmissions" do
       @scenario.share_of_industry_steel_captured_co2 = 100.0

       expect(@scenario.industry_steel_external_coupling_node_captured_co2_demand).to increase
     end
   end

    describe "In a scenario increasing the availability of CCUS" do

     it "should increase the energy use for CCUS" do
       @scenario.share_of_industry_steel_captured_co2 = 100.0

       expect(@scenario.industry_steel_external_coupling_node_captured_co2_electricity_demand).to increase
     end
    end
  end

# Testing the external inputs and effects on the energy graph for the refinery sector

  context "External coupling refinery sector" do
  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
      settings_enable_merit_order: 1,
      external_coupling_industry_chemical_refineries_useable_heat: 100.0, # refinery sector modelled using external input
      share_of_industry_chemicals_refineries_captured_co2: 100.0 # 100% of CCUS capacity chosen in refinery sector
    })
  end

   describe "In a scenario with 100% external input in the refinery sector" do
     it "demand should be equal to preset demand" do
       # with an error margin of 1.0E-12
       margin = 1.0E-12

       @scenario.industry_useful_demand_for_chemical_refineries_useable_heat_demand.value.should be_within(margin * @scenario.industry_useful_demand_for_chemical_refineries_useable_heat_preset_demand.value).of(@scenario.industry_useful_demand_for_chemical_refineries_useable_heat_preset_demand.value)
     end
   end

    describe "In a scenario with 100% external input in the refinery sector increasing demand" do

     it "should increase demand compared to preset demand" do
       @scenario.external_coupling_industry_chemical_refineries_useable_heat = 150.0

       expect(@scenario.industry_useful_demand_for_chemical_refineries_useable_heat_demand).to increase
     end
   end

    describe "In a scenario with 100% external input in the refinery sector increasing demand" do

     it "should increase captured CO2 emissions" do
       @scenario.external_coupling_industry_chemical_refineries_useable_heat = 150.0

       expect(@scenario.industry_chemicals_refineries_captured_co2_demand).to increase
     end
    end

     describe "In a scenario with 100% external input in the refinery sector increasing demand" do

      it "should increase electricity use for CCUS" do
        @scenario.external_coupling_industry_chemical_refineries_useable_heat = 150.0

        expect(@scenario.industry_chemicals_refineries_captured_co2_electricit_demand).to increase
     end
    end

     describe "In a scenario with 150% non-energetic demand in the refinery sector" do

      it "non-energetic demand should be equal to 1.5 times preset demand" do
        @scenario.external_coupling_industry_chemical_refineries_total_non_energetic = 150.0

        @scenario.industry_useful_demand_for_chemical_refineries_network_gas_non_energetic_demand.value.should be_within(margin * 150 * @scenario.industry_useful_demand_for_chemical_refineries_network_gas_non_energetic_preset_demand.value).of(150 * @scenario.industry_useful_demand_for_chemical_refineries_network_gas_non_energetic_preset_demand.value)
      end
    end

     describe "In a scenario with 150% electricity demand in the refinery sector" do

      it "electricity demand should be equal to 1.5 times preset demand" do
        @scenario.external_coupling_industry_chemical_refineries_electricity = 150.0

        @scenario.industry_useful_demand_for_chemical_refineries_electricity_demand.value.should be_within(margin * 150 * @scenario.industry_useful_demand_for_chemical_refineries_electricity_preset_demand.value).of(150 * @scenario.industry_useful_demand_for_chemical_refineries_electricity_preset_demand.value)
     end
    end
  end

  # Testing the external inputs and effects on the energy graph for the fertilizer sector

    context "External coupling fertilizer sector" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        settings_enable_merit_order: 1,
        external_coupling_industry_chemical_fertilizers_total_excluding_electricity: 100.0, # fertilizer sector modelled using external input
        share_of_industry_chemicals_fertilizers_captured_combustion_co2: 100.0, # 100% of CCUS combustion capacity chosen in fertilizer sector
        share_of_industry_chemicals_fertilizers_captured_processes_co2: 100.0 # 100% of CCUS processes capacity chosen in fertilizer sector
      })
    end

     describe "In a scenario with 100% external input in the fertilizer sector" do
       it "demand should be equal to preset demand" do
         # with an error margin of 1.0E-12
         margin = 1.0E-12

         @scenario.industry_chemicals_fertilizers_external_coupling_nodes_demand.value.should be_within(margin * @scenario.industry_chemicals_fertilizers_haber_bosch_process_hydrogen_demand.value).of(@scenario.industry_chemicals_fertilizers_haber_bosch_process_hydrogen_demand.value)
       end
     end

      describe "In a scenario with 100% external input in the fertilizer sector increasing demand" do

       it "should increase demand compared to preset demand" do
         @scenario.external_coupling_industry_chemical_fertilizers_total_excluding_electricity = 150.0

         expect(@scenario.industry_useful_demand_for_chemical_refineries_useable_heat_demand).to increase
       end
     end

      describe "In a scenario with 100% external input in the fertilizer sector increasing demand" do

       it "should increase captured CO2 emissions" do
         @scenario.external_coupling_industry_chemical_fertilizers_total_excluding_electricity = 150.0

         expect(@scenario.industry_chemicals_fertilizers_captured_combustion_co2_demand).to increase
       end
      end

       describe "In a scenario with 100% external input in the fertilizer sector increasing demand" do

        it "should increase electricity use for CCUS" do
          @scenario.external_coupling_industry_chemical_fertilizers_total_excluding_electricity = 150.0

          expect(@scenario.industry_chemicals_fertilizers_captured_combustion_co2_electricity_demand).to increase
       end
      end

       describe "In a scenario with 100% external input in the fertilizer sector increasing demand" do

        it "should increase captured CO2 emissions" do
          @scenario.external_coupling_industry_chemical_fertilizers_total_excluding_electricity = 150.0

          expect(@scenario.industry_chemicals_fertilizers_captured_processes_co2_demand).to increase
       end
      end

        describe "In a scenario with 100% external input in the fertilizer sector increasing demand" do

         it "should increase electricity use for CCUS" do
           @scenario.external_coupling_industry_chemical_fertilizers_total_excluding_electricity = 150.0

           expect(@scenario.industry_chemicals_fertilizers_captured_processes_co2_electricity_demand).to increase
       end
      end

      describe "In a scenario with 150% electricity demand in the fertilizer sector" do

       it "electricity demand should be equal to 1.5 times preset demand" do
         @scenario.external_coupling_industry_chemical_fertilizers_electricity = 150.0

         @scenario.industry_useful_demand_for_chemical_fertilizers_electricity_demand.value.should be_within(margin * 150 * @scenario.industry_useful_demand_for_chemical_fertilizers_electricity_preset_demand.value).of(150 * @scenario.industry_useful_demand_for_chemical_fertilizers_electricity_preset_demand.value)
      end
     end
    end

  # Testing the external inputs and effects on the energy graph for the chemical other sector

    context "External coupling chemical other sector" do
    before do
      @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {
        settings_enable_merit_order: 1,
        external_coupling_industry_chemical_other_useable_heat: 100.0, # chemical other sector modelled using external input
        share_of_industry_chemical_other_captured_co2: 100.0 # 100% of CCUS capacity chosen in chemical other sector
      })
    end

     describe "In a scenario with 100% external input in the chemical other" do
       it "demand should be equal to preset demand" do
         # with an error margin of 1.0E-12
         margin = 1.0E-12

         @scenario.industry_useful_demand_for_chemical_other_useable_heat_demand.value.should be_within(margin * @scenario.industry_useful_demand_for_chemical_other_useable_heat_preset_demand.value).of(@scenario.industry_useful_demand_for_chemical_other_useable_heat_preset_demand.value)
       end
     end

      describe "In a scenario with 100% external input in the chemical other sector increasing demand" do

       it "should increase demand compared to preset demand" do
         @scenario.external_coupling_industry_chemical_other_useable_heat = 150.0

         expect(@scenario.industry_useful_demand_for_chemical_other_useable_heat_demand).to increase
       end
     end

      describe "In a scenario with 100% external input in the chemical other sector increasing demand" do

       it "should increase captured CO2 emissions" do
         @scenario.external_coupling_industry_chemical_other_useable_heat = 150.0

         expect(@scenario.industry_chemical_other_captured_co2_demand).to increase
       end
      end

       describe "In a scenario with 100% external input in the chemical other sector increasing demand" do

        it "should increase electricity use for CCUS" do
          @scenario.external_coupling_industry_chemical_other_useable_heat = 150.0

          expect(@scenario.industry_chemical_other_captured_co2_electricity_demand).to increase
       end
      end

       describe "In a scenario with 150% non-energetic demand in the chemical other sector" do

        it "non-energetic demand should be equal to 1.5 times preset demand" do
          @scenario.external_coupling_industry_chemical_other_total_non_energetic = 150.0

          @scenario.industry_useful_demand_for_chemical_other_non_energetic_demand.value.should be_within(margin * 150 * @scenario.industry_useful_demand_for_chemical_other_non_energetic_preset_demand.value).of(150 * @scenario.industry_useful_demand_for_chemical_other_non_energetic_preset_demand.value)
       end
     end

      describe "In a scenario with 150% electricity demand in the chemical other sector" do

       it "electricity demand should be equal to 1.5 times preset demand" do
         @scenario.external_coupling_industry_chemical_other_electricity = 150.0

         @scenario.industry_useful_demand_for_chemical_other_electricity_demand.value.should be_within(margin * 150 * @scenario.industry_useful_demand_for_chemical_other_electricity_preset_demand.value).of(150 * @scenario.industry_useful_demand_for_chemical_other_electricity_preset_demand.value)
      end
     end
    end

end
