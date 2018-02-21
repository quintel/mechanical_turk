# Relevant sliders #336, #337, #639, #640, containing the HHP insulation formula

require 'spec_helper'

describe "Transport" do

  before do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2050, inputs: {settings_enable_merit_order: 0})
  end

  context "Electric vehicles" do

    describe "Improving efficiency of electric vehicles" do

      it "should decrease the costs" do
        # increasing efficiency electrical vehicles
        @scenario.transport_vehicle_using_electricity_efficiency = 3.0

        expect(@scenario.costs).to decrease

      end
    end
  end
    context "E-bikes" do

      describe "Increasing the share of E-bike usage" do

        it "should increase the primary energy demand demand" do

          @scenario.transport_bicycle_using_electricity_share = 100

          expect(@scenario.primary_demand).to increase

        end
      end
    end

    context "Domestic Navigation" do

      describe "Increasing the share of LNG in domestic navigation" do

        it "should decrease the CO2 emissions" do

          @scenario.transport_ship_using_lng_mix_share = 100

          expect(@scenario.co2).to decrease

        end
      end
    end

    context "International aviation" do

      describe "Increasing the CO2 allocation share of international aviation" do

        it "should increase the CO2 emissions" do

          @scenario.bunkers_allocated_percentage_aviation = 100

          expect(@scenario.co2).to increase

        end
      end
    end

    context "International navigation" do

      describe "Increasing the CO2 allocation share of international navigation" do

        it "should increase the CO2 emissions" do

          @scenario.bunkers_allocated_percentage_shipping = 100

          expect(@scenario.co2).to increase

        end
      end
    end

end
