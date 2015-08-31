# Spec to verify that the outcomes of the three scenarios used in the RLI
# report are still consistent with the results mentioned in this report

require 'spec_helper'

describe "Verifying the outcomes of the three RLI scenarios:" do

  describe "SER Energieakkoord 2023 scenario 2023:" do

   before(:each) do
      @scenario = Turk::Preset.new(193349)
    end

    describe "Dashboard items:" do

      it "Energy use dashboard item should be within 0.0005 of -0.068" do
        @scenario.turk_energy_use.value.should be_within(0.0005).of(-0.068)
      end

      it "CO2 emissions dashboard item should be within 0.0005 of -0.090" do
        @scenario.dashboard_reduction_of_co2_emissions_versus_1990.value.should be_within(0.0005).of(-0.090)
      end

      it "Energy imports dashboard item should be within 0.0005 of 0.352" do
        @scenario.dashboard_energy_import_netto.value.should be_within(0.0005).of(0.352)
      end

      it "Costs dashboard item should be within 0.05 of 67.5" do
        @scenario.dashboard_total_costs.value.should be_within(0.05).of(67.5)
      end

      it "Bio-footprint dashboard item should be within 0.05 of 0.7" do
        @scenario.dashboard_bio_footprint.value.should be_within(0.05).of(0.7)
      end

      it "Renewables dashboard item should be within 0.0005 of 0.146" do
        @scenario.dashboard_renewability.value.should be_within(0.0005).of(0.146)
      end

    end

    describe "CO2 emissions (present):" do

      it "Buildings CO2 emissions should be within 0.05 of 25.5" do
        @scenario.primary_co2_of_buildings.present.should be_within(0.05).of(25.5)
      end

      it "Households CO2 emissions should be within 0.05 of 26.7" do
        @scenario.primary_co2_of_households.present.should be_within(0.05).of(26.7)
      end

      it "Agriculture CO2 emissions should be within 0.05 of 8.2" do
        @scenario.primary_co2_of_agriculture.present.should be_within(0.05).of(8.2)
      end

      it "Transport CO2 emissions should be within 0.05 of 37.7" do
        @scenario.primary_co2_of_transport.present.should be_within(0.05).of(37.7)
      end

      it "Industry CO2 emissions should be within 0.05 of 61.1" do
        @scenario.turk_rli_primary_co2_of_industry.present.should be_within(0.05).of(61.1)
      end

      it "Energy sector CO2 emissions should be within 0.05 of 2.4" do
        @scenario.turk_rli_primary_co2_of_energy.present.should be_within(0.05).of(2.4)
      end

      it "Other CO2 emissions should be within 0.05 of 0.0" do
        @scenario.primary_co2_of_other.present.should be_within(0.05).of(0.0)
      end

    end

    describe "Primary demand (present):" do

      it "Primary demand of final demand should be within 500000000 of 3330600000000" do
        @scenario.primary_demand_caused_by_final_demand.present.should be_within(500000000).of(3330600000000)
      end

    end

    describe "Investment costs:" do

      it "Total investment costs should be within 0.05 of 98.0" do
        @scenario.total_future_in_investment_cost_table.value.should be_within(0.05).of(98.0)
      end 

    end

  end

  describe "(voor)Beeld 80% CO2 reductie in 2050:" do

   before(:each) do
      @scenario = Turk::Preset.new(423879)
    end

    describe "Dashboard items:" do

      it "Energy use dashboard item should be within 0.0005 of -0.2920" do
        @scenario.turk_energy_use.value.should be_within(0.0005).of(-0.292)
      end

      it "CO2 emissions dashboard item should be within 0.0005 of -0.800" do
        @scenario.dashboard_reduction_of_co2_emissions_versus_1990.value.should be_within(0.0005).of(-0.800)
      end

      it "Energy imports dashboard item should be within 0.0005 of 0.739" do
        @scenario.dashboard_energy_import_netto.value.should be_within(0.0005).of(0.739)
      end

      it "Costs dashboard item should be within 0.05 of 54.6" do
        @scenario.dashboard_total_costs.value.should be_within(0.05).of(54.6)
      end

      it "Bio-footprint dashboard item should be within 0.05 of 1.2" do
        @scenario.dashboard_bio_footprint.value.should be_within(0.05).of(1.2)
      end

      it "Renewables dashboard item should be within 0.0005 of 0.653" do
        @scenario.dashboard_renewability.value.should be_within(0.0005).of(0.653)
      end

    end

    describe "CO2 emissions:" do

      it "Buildings CO2 emissions should be within 0.05 of 2.2" do
        @scenario.primary_co2_of_buildings.value.should be_within(0.05).of(2.2)
      end

      it "Households CO2 emissions should be within 0.05 of 1.7" do
        @scenario.primary_co2_of_households.value.should be_within(0.05).of(1.7)
      end

      it "Agriculture CO2 emissions should be within 0.05 of 1.7" do
        @scenario.primary_co2_of_agriculture.value.should be_within(0.05).of(1.7)
      end

      it "Transport CO2 emissions should be within 0.05 of 2.8" do
        @scenario.primary_co2_of_transport.value.should be_within(0.05).of(2.8)
      end

      it "Industry CO2 emissions should be within 0.05 of 22.1" do
        @scenario.turk_rli_primary_co2_of_industry.value.should be_within(0.05).of(22.1)
      end

      it "Energy sector CO2 emissions should be within 0.05 of 0.1" do
        @scenario.turk_rli_primary_co2_of_energy.value.should be_within(0.05).of(0.1)
      end

      it "Other CO2 emissions should be within 0.05 of 0.0" do
        @scenario.primary_co2_of_other.value.should be_within(0.05).of(0.0)
      end

    end

    describe "Primary demand:" do

      it "Primary demand of final demand should be within 500000000 of 2352000000000" do
        @scenario.primary_demand_caused_by_final_demand.value.should be_within(500000000).of(2352000000000)
      end

    end

    describe "Investment costs:" do

      it "Total investment costs should be within 0.05 of 98.0" do
        @scenario.total_future_in_investment_cost_table.value.should be_within(0.05).of(230.4)
      end 

    end

  end

  describe "(voor)Beeld 95% CO2 reductie in 2050:" do

   before(:each) do
      @scenario = Turk::Preset.new(423882)
    end

    describe "Dashboard items:" do

      it "Energy use dashboard item should be within 0.0005 of -0.299" do
        @scenario.turk_energy_use.value.should be_within(0.0005).of(-0.299)
      end

      it "CO2 emissions dashboard item should be within 0.0005 of -0.950" do
        @scenario.dashboard_reduction_of_co2_emissions_versus_1990.value.should be_within(0.0005).of(-0.950)
      end

      it "Energy imports dashboard item should be within 0.0005 of 0.700" do
        @scenario.dashboard_energy_import_netto.value.should be_within(0.0005).of(0.700)
      end

      it "Costs dashboard item should be within 0.05 of 60.4" do
        @scenario.dashboard_total_costs.value.should be_within(0.05).of(60.4)
      end

      it "Bio-footprint dashboard item should be within 0.05 of 2.9" do
        @scenario.dashboard_bio_footprint.value.should be_within(0.05).of(2.9)
      end

      it "Renewables dashboard item should be within 0.0005 of 0.911" do
        @scenario.dashboard_renewability.value.should be_within(0.0005).of(0.911)
      end

    end

    describe "CO2 emissions:" do

      it "Buildings CO2 emissions should be within 0.05 of 0.7" do
        @scenario.primary_co2_of_buildings.value.should be_within(0.05).of(0.7)
      end

      it "Households CO2 emissions should be within 0.05 of 0.2" do
        @scenario.primary_co2_of_households.value.should be_within(0.05).of(0.2)
      end

      it "Agriculture CO2 emissions should be within 0.05 of 0.5" do
        @scenario.primary_co2_of_agriculture.value.should be_within(0.05).of(0.5)
      end

      it "Transport CO2 emissions should be within 0.05 of 0.5" do
        @scenario.primary_co2_of_transport.value.should be_within(0.05).of(0.5)
      end

      it "Industry CO2 emissions should be within 0.05 of 5.6" do
        @scenario.turk_rli_primary_co2_of_industry.value.should be_within(0.05).of(5.6)
      end

      it "Energy sector CO2 emissions should be within 0.05 of 0.0" do
        @scenario.turk_rli_primary_co2_of_energy.value.should be_within(0.05).of(0.0)
      end

      it "Other CO2 emissions should be within 0.05 of 0.0" do
        @scenario.primary_co2_of_other.value.should be_within(0.05).of(0.0)
      end

    end

    describe "Primary demand:" do

      it "Primary demand of final demand should be within 500000000 of 2317900000000" do
        @scenario.primary_demand_caused_by_final_demand.value.should be_within(500000000).of(2317900000000)
      end

    end

    describe "Investment costs:" do

      it "Total investment costs should be within 0.05 of 98.0" do
        @scenario.total_future_in_investment_cost_table.value.should be_within(0.05).of(253.4)
      end 

    end

  end

end