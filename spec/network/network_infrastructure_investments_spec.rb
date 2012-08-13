require 'spec_helper'

describe "network infrastructure investments" do

  before(:each) do
    @scenario = Turk::Scenario.new(area_code: "nl", end_year: 2040)
  end

  context "start scenario" do

    it "no infrastructure investments need" do
      @scenario.lv_net_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be == 0.0
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be == 0.0

    end
  end

  context "scenario a(3887)" do

    it "infrastructure investments need" do
      @scenario.set_input 333, 0.0
      @scenario.set_input 339, 0.0
      @scenario.set_input 317, 0.0
      @scenario.set_input 341, 0.0
      @scenario.set_input 340, 0.0
      @scenario.set_input 52, 0.0
      @scenario.set_input 441, 0.0
      @scenario.set_input 248, 0.0
      @scenario.set_input 411, 0.0
      @scenario.set_input 352, 0.0
      @scenario.set_input 372, -1.6
      @scenario.set_input 48, 0.0
      @scenario.set_input 338, 90.0
      @scenario.set_input 344, 0.0
      @scenario.set_input 51, 0.0
      @scenario.set_input 375, 0.0
      @scenario.set_input 343, 100.0
      @scenario.set_input 242, 0.0
      @scenario.set_input 47, 100.0
      @scenario.set_input 383, 0.0
      @scenario.set_input 387, 0.0
      @scenario.set_input 409, 0.0
      @scenario.set_input 406, 0.0
      @scenario.set_input 386, 0.0
      @scenario.set_input 377, -1.6
      @scenario.set_input 394, 90.0
      @scenario.set_input 390, 0.0
      @scenario.set_input 389, 0.0
      @scenario.set_input 385, 0.0
      @scenario.set_input 388, 10.0
      @scenario.set_input 405, 100.0
      @scenario.set_input 147, 30.000000000000004
      @scenario.set_input 148, 0.0
      @scenario.set_input 238, 0.0
      @scenario.set_input 239, 0.0
      @scenario.set_input 428, 6.4
      @scenario.set_input 429, 93.6
      @scenario.set_input 141, 1.3000000000000003
      @scenario.set_input 142, 1.3000000000000003
      @scenario.set_input 146, 70.0
      @scenario.set_input 159, 70.0
      @scenario.set_input 158, 30.000000000000004
      @scenario.set_input 157, 0.0
      @scenario.set_input 240, 0.0
      @scenario.set_input 171, 0.6000000000000001
      @scenario.set_input 328, 0.6
      @scenario.set_input 186, 0.6
      @scenario.set_input 216, 0.0
      @scenario.set_input 217, 0.0
      @scenario.set_input 218, 0.0
      @scenario.set_input 219, 100.0
      @scenario.set_input 326, 0.0
      @scenario.set_input 214, -1.1999999999853914
      @scenario.set_input 170, 0.2
      @scenario.set_input 322, 120.2
      @scenario.set_input 324, 104.8
      @scenario.set_input 246, 0.0
      @scenario.set_input 223, 0.0
      @scenario.set_input 327, 10.0
      @scenario.set_input 221, -1.5999999401626401
      @scenario.set_input 225, 0.0
      @scenario.set_input 227, 20.000000000000004
      @scenario.set_input 228, 70.0
      @scenario.set_input 250, 0.0
      @scenario.set_input 253, 0.0
      @scenario.set_input 315, 0.0
      @scenario.set_input 551, 0.0
      @scenario.set_input 259, 0.0
      @scenario.set_input 292, 100.0
      @scenario.set_input 293, 0.0
      @scenario.set_input 294, 96.8
      @scenario.set_input 295, 3.2
      @scenario.set_input 489, 0.0
      @scenario.set_input 488, 100.0
      @scenario.set_input 263, 2325.0
      @scenario.set_input 264, 0.0
      @scenario.set_input 265, 6675.000000000001
      @scenario.set_input 582, 10.0
    
      @scenario.lv_net_in_additional_infrastructure_investments.value.should be_within(1000000000).of(23000000000)
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be_within(1000000000).of(5000000000)
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be_within(1000000000).of(2000000000)
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be_within(1000000000).of(6000000000)
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be_within(1000000000).of(6000000000)
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be_within(1000000000).of(15000000000)
    end
  end  
  
  context "scenario b(3893)" do

    it "infrastructure investments need" do
      @scenario.set_input 339, 0.0
      @scenario.set_input 333, 0.0
      @scenario.set_input 317, 0.0
      @scenario.set_input 341, 100.0
      @scenario.set_input 340, 0.0
      @scenario.set_input 52, 0.0
      @scenario.set_input 441, 0.0
      @scenario.set_input 248, 0.0
      @scenario.set_input 411, 0.0
      @scenario.set_input 352, 0.0
      @scenario.set_input 203, 2.5000000000000004
      @scenario.set_input 372, -0.9999999997635315
      @scenario.set_input 48, 0.0
      @scenario.set_input 338, 20.000000000000004
      @scenario.set_input 344, 0.0
      @scenario.set_input 51, 60.0000000000001
      @scenario.set_input 375, 0.0
      @scenario.set_input 343, 0.0
      @scenario.set_input 242, 0.0
      @scenario.set_input 47, 76.5
      @scenario.set_input 383, 0.0
      @scenario.set_input 387, 0.0
      @scenario.set_input 409, 0.0
      @scenario.set_input 406, 70.0
      @scenario.set_input 386, 0.0
      @scenario.set_input 377, 1.0
      @scenario.set_input 378, -0.9999999999997718
      @scenario.set_input 394, 20.000000000000004
      @scenario.set_input 390, 0.0
      @scenario.set_input 389, 0.0
      @scenario.set_input 385, 0.0
      @scenario.set_input 388, 10.0
      @scenario.set_input 147, 30.000000000000004
      @scenario.set_input 148, 0.0
      @scenario.set_input 238, 0.0
      @scenario.set_input 239, 0.0
      @scenario.set_input 428, 6.4
      @scenario.set_input 429, 93.6
      @scenario.set_input 141, 1.2000000000000002
      @scenario.set_input 142, 1.2000000000000002
      @scenario.set_input 146, 70.0
      @scenario.set_input 159, 70.0
      @scenario.set_input 158, 30.000000000000004
      @scenario.set_input 157, 0.0
      @scenario.set_input 240, 0.0
      @scenario.set_input 216, 100.0
      @scenario.set_input 217, 0.0
      @scenario.set_input 218, 0.0
      @scenario.set_input 219, 0.0
      @scenario.set_input 326, 0.0
      @scenario.set_input 214, -0.5
      @scenario.set_input 170, 0.2
      @scenario.set_input 324, 104.8
      @scenario.set_input 246, 0.0
      @scenario.set_input 223, 0.0
      @scenario.set_input 327, 30.000000000000004
      @scenario.set_input 221, -0.9999999999999999
      @scenario.set_input 225, 70.0
      @scenario.set_input 227, 0.0
      @scenario.set_input 228, 0.0
      @scenario.set_input 250, 0.0
      @scenario.set_input 253, 0.0
      @scenario.set_input 315, 0.0
      @scenario.set_input 551, 0.0
      @scenario.set_input 256, 0.0
      @scenario.set_input 257, 0.0
      @scenario.set_input 276, 0.0
      @scenario.set_input 416, 26.200000000000003
      @scenario.set_input 259, 0.0
      @scenario.set_input 489, 0.0
      @scenario.set_input 488, 100.0
      @scenario.set_input 263, 1650.0
      @scenario.set_input 264, 0.0
      @scenario.set_input 265, 2000.0
      @scenario.set_input 292, 100.0
      @scenario.set_input 293, 0.0
      @scenario.set_input 294, 96.8
      @scenario.set_input 295, 3.2
      @scenario.set_input 582, 20.000000000000004

      @scenario.lv_net_in_additional_infrastructure_investments.value.should be_within(1000000000).of(13000000000)
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be_within(1000000000).of(3000000000)
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be_within(1000000000).of(2000000000)
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be_within(1000000000).of(4000000000)
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be_within(1000000000).of(5000000000)
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be_within(1000000000).of(6000000000)
    end
  end
  
  context "scenario c(3901)" do

    it "infrastructure investments need" do
      @scenario.set_input   333, 0.0
      @scenario.set_input   339, 0.0
      @scenario.set_input   317, 0.0
      @scenario.set_input   341, 100.0
      @scenario.set_input   340, 0.0
      @scenario.set_input   52, 0.0
      @scenario.set_input   441, 0.0
      @scenario.set_input   248, 0.0
      @scenario.set_input   411, 0.0
      @scenario.set_input   352, 0.0
      @scenario.set_input   203, 2.5000000000000004
      @scenario.set_input   372, -0.9999999999999999
      @scenario.set_input   48, 0.0
      @scenario.set_input   338, 65.0
      @scenario.set_input   344, 0.0
      @scenario.set_input   51, 0.0
      @scenario.set_input   375, 0.0
      @scenario.set_input   343, 0.0
      @scenario.set_input   242, 0.0
      @scenario.set_input   47, 27.000000000000004
      @scenario.set_input   383, 0.0
      @scenario.set_input   387, 0.0
      @scenario.set_input   409, 0.0
      @scenario.set_input   406, 0.0
      @scenario.set_input   386, 0.0
      @scenario.set_input   377, 1.0
      @scenario.set_input   378, -0.9999999999997718
      @scenario.set_input   394, 71.8
      @scenario.set_input   390, 0.0
      @scenario.set_input   389, 0.0
      @scenario.set_input   385, 0.0
      @scenario.set_input   388, 28.200000000000003
      @scenario.set_input   147, 0.0
      @scenario.set_input   148, 0.0
      @scenario.set_input   238, 0.0
      @scenario.set_input   239, 0.0
      @scenario.set_input   428, 6.4
      @scenario.set_input   429, 93.6
      @scenario.set_input   141, 2.5000000000000004
      @scenario.set_input   142, 2.5000000000000004
      @scenario.set_input   146, 100.0
      @scenario.set_input   159, 100.0
      @scenario.set_input   158, 0.0
      @scenario.set_input   157, 0.0
      @scenario.set_input   240, 0.0
      @scenario.set_input   216, 100.0
      @scenario.set_input   217, 0.0
      @scenario.set_input   218, 0.0
      @scenario.set_input   219, 0.0
      @scenario.set_input   326, 0.0
      @scenario.set_input   214, -0.5
      @scenario.set_input   170, 0.2
      @scenario.set_input   324, 133.0
      @scenario.set_input   246, 0.0
      @scenario.set_input   223, 0.0
      @scenario.set_input   327, 35.0
      @scenario.set_input   221, -0.9999999999997718
      @scenario.set_input   225, 10.0
      @scenario.set_input   227, 15.0
      @scenario.set_input   228, 40.00000000000001
      @scenario.set_input   250, 0.0
      @scenario.set_input   253, 0.0
      @scenario.set_input   315, 0.0
      @scenario.set_input   551, 0.0
      @scenario.set_input   251, 31.000000000000004
      @scenario.set_input   259, 8.7
      @scenario.set_input   489, 0.0
      @scenario.set_input   488, 100.0
      @scenario.set_input   263, 660.0000000000001
      @scenario.set_input   264, 0.0
      @scenario.set_input   265, 2000.0
      @scenario.set_input   292, 100.0
      @scenario.set_input   293, 0.0
      @scenario.set_input   294, 96.8
      @scenario.set_input   295, 3.2
      @scenario.set_input   582, 35.0

      @scenario.lv_net_in_additional_infrastructure_investments.value.should be_within(1000000000).of(60000000000)
      @scenario.lv_mv_transformer_in_additional_infrastructure_investments.value.should be_within(1000000000).of(10000000000)
      @scenario.mv_distribution_in_additional_infrastructure_investments.value.should be_within(1000000000).of(5000000000)
      @scenario.mv_transport_in_additional_infrastructure_investments.value.should be_within(1000000000).of(12000000000)
      @scenario.mv_hv_transformer_in_additional_infrastructure_investments.value.should be_within(1000000000).of(13000000000)
      @scenario.hv_net_in_additional_infrastructure_investments.value.should be_within(1000000000).of(13000000000)
    end
  end



end