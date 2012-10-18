# Total score calculated for ETFlex.
# We start of with ~1000 points (see base) and give penalties or bonus points
#
# * cost:          penalty
# * co2:           penalty
# * electric car:  penalty
# * greengas:      penalty
# * heatpump:      penalty
# * imbalance:     penalty
# * led:           penalty
# * nuclear waste: penalty
# * reliability:   penalty
# * renewability:  bonus
#
# * deviations:    penalty
#
#
# MAX(0,
#   SUM(
#     Q(etflex_score_base),
#
#     Q(etflex_score_cost),
#     Q(etflex_score_co2),
#     Q(etflex_score_electric_car),
#     Q(etflex_score_greengas),
#     Q(etflex_score_heatpump),
#     Q(etflex_score_imbalance),
#     Q(etflex_score_led),
#     Q(etflex_score_nuclear_waste),
#     Q(etflex_score_reliability),
#
#     Q(etflex_score_renewability),
#
#     Q(etflex_score_deviations_from_reference_scenario)
#   )

#- unit = #

require 'spec_helper'

describe "ETFlex Scoring mechanism" do

  before(:each) do
    @s = Turk::Scenario.new(area_code: 'nl', end_year: 2030, autobalance: true)
  end

  describe "Demand" do

    describe "Insulation level" do
      it "should raise your CO2 score" do
        @s.households_insulation_level_old_houses = 1.1 #Rc value
        expect(@s.etflex_score_co2).to increase
      end
      it "should lower your cost score" do
        @s.households_insulation_level_old_houses = 1.1 #Rc value
        expect(@s.etflex_score_cost).to increase
      end

    end

    describe "Electric car share" do
      it "should increase renewability score" do
        @s.transport_cars_electric_share = 10 #%
        expect(@s.etflex_score_renewability).to increase
      end
      it "should increase co2 score" do
        @s.transport_cars_electric_share = 10 #%
        expect(@s.etflex_score_co2).to increase
      end
      it "should decrease cost score" do
        @s.transport_cars_electric_share = 10 #%
        expect(@s.etflex_score_cost).to increase
      end
      it "should lower electric car score (penalty)" do
        @s.transport_cars_electric_share = 10 #%
        expect(@s.etflex_score_electric_car).to decrease
      end
    end

    describe "LED lighting" do
      it "should raise co2 score" do
        @s.households_lighting_light_emitting_diode_share = 10 #%
        expect(@s.etflex_score_co2).to increase
      end
      it "should raise cost score" do
        @s.households_lighting_light_emitting_diode_share = 10 #%
        expect(@s.etflex_score_cost).to increase
      end
      it "should lower led score (penalty)" do
        @s.households_lighting_light_emitting_diode_share = 10 #%
        expect(@s.etflex_score_led).to decrease
      end
      it "penalty of led should be lower than co2 + costs + renewability when at 1%" do
        @s.households_lighting_light_emitting_diode_share = 1 #%
        expect(@s.etflex_score_co2.increase +
         @s.etflex_score_cost.increase +
         @s.etflex_score_renewability.increase +
         @s.etflex_score_led.increase).to be > 0
      end
      it "penalty of led should be higher than co2 + costs + renewability when at 100%" do
        @s.households_lighting_light_emitting_diode_share = 100 #%
        expect(@s.etflex_score_co2.increase +
         @s.etflex_score_cost.increase +
         @s.etflex_score_renewability.increase +
         @s.etflex_score_led.increase).to be < 1
      end
    end

    describe "Heatpump add-on" do
      it "should raise co2 score" do
        @s.households_heating_heat_pump_add_on_share = 10 #%
        expect(@s.etflex_score_co2).to increase
      end
      it "should lower cost score" do
        @s.households_heating_heat_pump_add_on_share = 10 #%
        expect(@s.etflex_score_cost).to decrease
      end
      it "should lower heatpump score (penalty)" do
        @s.households_heating_heat_pump_add_on_share = 10 #%
        expect(@s.etflex_score_heatpump).to decrease
      end
      it "penalty of heatpump should be lower than co2 + costs + renewability when at 1%" do
        @s.households_heating_heat_pump_add_on_share = 1 #%
        expect(@s.etflex_score_co2.increase +
         @s.etflex_score_cost.increase +
         @s.etflex_score_renewability.increase +
         @s.etflex_score_heatpump.increase).to be > 0
      end
      it "penalty of heatpump should be higher than co2 + costs + renewability when at 100%" do
        @s.households_heating_heat_pump_add_on_share = 100 #%
        expect(@s.etflex_score_co2.increase +
         @s.etflex_score_cost.increase +
         @s.etflex_score_renewability.increase +
         @s.etflex_score_heatpump.increase).to be < 1
      end
    end
  end

  describe "Supply" do

    describe "Coal plant" do
      it "should lower your CO2 score" do
        @s.number_of_pulverized_coal = 10
        expect(@s.etflex_score_co2).to decrease
      end
    end

    describe "Nuclear power plant" do
      it "should lower your nuclear score (penalty)" do
        @s.number_of_nuclear_3rd_gen = 2 #maximum number of nucl. power plants
        expect(@s.etflex_score_nuclear_waste).to decrease
      end
      it "should increase your co2 score" do
        @s.number_of_nuclear_3rd_gen = 2 #maximum number of nucl. power plants
        expect(@s.etflex_score_co2).to increase
      end
      it "penalty of nuclear should be higher than co2 + costs + renewability when at 0.1" do
        @s.number_of_nuclear_3rd_gen = 0.1 #nuclear power plants
        expect(@s.etflex_score_co2.increase +
         @s.etflex_score_cost.increase +
         @s.etflex_score_renewability.increase +
         @s.etflex_score_nuclear_waste.increase).to be < 1
      end
      it "penalty of nuclear should be higher than co2 + costs + renewability when at 2" do
        @s.number_of_nuclear_3rd_gen = 2 #nuclear power plants
        expect(@s.etflex_score_co2.increase +
         @s.etflex_score_cost.increase +
         @s.etflex_score_renewability.increase +
         @s.etflex_score_nuclear_waste.increase).to be < 1
      end
    end

    describe "Wind turbines" do
      it "should raise your score on CO2" do
        @s.number_of_wind_onshore_land = 2000
        expect(@s.etflex_score_co2).to increase
      end
    end

    describe "Solar panels" do
      it "should raise your score on CO2" do
        @s.households_market_penetration_solar_panels = 100 #%
        expect(@s.etflex_score_co2).to increase
      end
    end

    describe "Green gas" do
      it "should raise your score on CO2" do
        @s.green_gas_total_share = 10 #%
        expect(@s.etflex_score_co2).to increase
      end
    end
  end

  describe "Imbalance" do

    it "should be at least 8 points when all supply sliders to the right" do
      @s.number_of_pulverized_coal = 10
      @s.number_of_nuclear_3rd_gen = 2
      @s.number_of_gas_ccgt = 10
      @s.number_of_wind_onshore_land = 2000
      @s.green_gas_total_share = 10 #%
      @s.households_market_penetration_solar_panels = 100 #%
      expect(@s.etflex_score_imbalance.value).to be < 500
    end

  end

end
