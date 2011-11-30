class Client < ActiveRecord::Base
  def self.create_client
    1000.times do
      @characteristics=[]
      4.times do |index|
        @characteristics[index]=(rand(10-(@characteristics.sum/10)))*10
      end
      @characteristics[4]=100-@characteristics.sum
      @decision=[true,false]
      Client.create!(:return_focus=>@characteristics[0],:risk_focus=>@characteristics[1],:tolerance=>@characteristics[2],:fee_sensitivity=>@characteristics[3],:profit_sharing_sensitivity=>@characteristics[4],:diversification_intent=>@decision[rand(2)],:outlook=>@decision[rand(2)],:proportion_invested=>(1+rand(10))*10,:wealth_growth_rate=>rand(20)*5,:diversification_intent_value=>(1+rand(10))*5)
    end
  end
end
