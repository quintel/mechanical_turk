#MAX(0,
#  SUM(
#    Q(etflex_score_base),
#
#    Q(etflex_score_cost),
#    Q(etflex_score_co2),
#    Q(etflex_score_electric_car),
#    Q(etflex_score_greengas),
#    Q(etflex_score_heatpump),
#    Q(etflex_score_imblance),
#    Q(etflex_score_led),
#    Q(etflex_score_nuclear_waste),
#    Q(etflex_score_reliability),
#
#    Q(etflex_score_renewability)
#  )
#)

require 'spec_helper'

describe "ETFlex Scoring mechanism" do

  before(:each) do
    @s = Turk::Scenario.new(area_code: 'nl', end_year: 2030)
  end

  describe "Demand" do

    describe "Insulation level" do
      it "should raise your CO2 score" do
        @s.households_insulation_level_old_houses = 1.1 #Rc value
        @s.etflex_score_co2.should increase
      end
      it "should lower your cost score" do
        @s.households_insulation_level_old_houses = 1.1 #Rc value
        @s.etflex_score_cost.should increase
      end

    end

    describe "Electric car share" do
      it "should increase renewability score" do
        @s.transport_cars_electric_share = 10 #%
        @s.etflex_score_renewability.should increase
      end
      it "should lower electric car score (penalty)" do
        @s.transport_cars_electric_share = 10 #%
        @s.etflex_score_electric_car.should decrease
      end
    end

    describe "LED lighting" do
      it "should raise co2 score" do
        @s.households_lighting_light_emitting_diode_share = 10 #%
        @s.etflex_score_co2.should increase
      end
      it "should lower led score (penalty)" do
        @s.households_lighting_light_emitting_diode_share = 100 #%
        @s.etflex_score_led.should decrease
      end
    end

  end

  before(:each) do
    @s = Turk::Scenario.new(area_code: 'nl', end_year: 2030)
  end

  describe "Supply" do

    describe "Coal plant" do
      it "should lower your CO2 score" do
        @s.number_of_pulverized_coal = 10
        @s.etflex_score_co2.should decrease
      end
    end

    describe "Nuclear power plant" do
      it "should lower your nuclear score (penalty)" do
        @s.number_of_nuclear_3rd_gen = 2
        @s.etflex_score_nuclear_waste.should decrease
      end
    end

    describe "Wind turbines" do
      it "should raise your score on CO2" do
        @s.number_of_wind_onshore_land = 2000
        @s.etflex_score_co2.should increase
      end
    end

    describe "Solar panels" do
      it "should raise your score on CO2" do
        @s.households_market_penetration_solar_panels = 100 #%
        @s.etflex_score_co2.should increase
      end
    end

    describe "Green gas" do
      it "should raise your score on CO2" do
        @s.green_gas_total_share = 10 #%
        # The ETlite uses a balancer to also send the 'other' slider value
        # As of now, we are implementing a Balancer on the ETEngine, when
        # that is done, we can get rid of the following line.
        @s.natural_gas_total_share = 90 #%
        @s.etflex_score_co2.should increase
      end
    end
  end

end
