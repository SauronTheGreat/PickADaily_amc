class Round < ActiveRecord::Base
  belongs_to :simulation
  def assign_clients_to_players
    ClientPlayer.delete_all
    @clients=Client.all
    @players=Player.all
    @return_sum=PlayerPromise.find_all_by_round_id(self.id).sum(&:expected_return)
    @risk_sum=PlayerPromise.find_all_by_round_id(self.id).sum(&:max_risk)
    @management_fee_sum=PlayerFeeStructure.find_all_by_round_id(self.id).sum(&:management_fee)
    @carry_fee_sum=PlayerFeeStructure.find_all_by_round_id(self.id).sum(&:carry_fee)
    @player_management_score=[]
    @player_carry_score=[]
    @players.each_with_index do |player, index|
      @player_management_score[player.id]=(@management_fee_sum.to_i)/(PlayerFeeStructure.find_by_player_id_and_round_id(player.id, self.id).management_fee.to_f)
      @player_carry_score[player.id]=(@carry_fee_sum.to_i)/(PlayerFeeStructure.find_by_player_id_and_round_id(player.id, self.id).carry_fee.to_f)
    end



    @player_management_score.collect!{|p| if p.nil? then 0 else p end}
    @player_carry_score.collect!{|p| if p.nil? then 0 else p end}


    @management_fee_sum=@player_management_score.inject(:+)
    @carry_fee_sum=@player_carry_score.inject(:+)
    @clients.each do |client|
      @player_score_for_client=Array.new(Player.count)
      @players.each_with_index do |player, index|
        @player_promise=PlayerPromise.find_by_player_id_and_round_id(player.id, self.id)
        @player_return_score_for_client=(@player_promise.expected_return/@return_sum.to_f)*100
        @player_risk_score_for_client=(@player_promise.max_risk/@risk_sum.to_f)*100
        @player_management_fee_score_for_client=(@player_management_score[player.id]/@management_fee_sum.to_f)*100
        @player_carry_fee_score_for_client=(@player_carry_score[player.id]/@carry_fee_sum.to_f)*100
        @player_score_for_client[player.id]=@player_return_score_for_client+@player_risk_score_for_client+@player_management_fee_score_for_client+@player_carry_fee_score_for_client
      end


      @player_score_for_client.collect!{|p| if p.nil? then 0 else p end}


      @players_ids=@player_score_for_client.sort.reverse.collect{ |p| @player_score_for_client.index(p) }
      @players_ids.reject!{|p| p==0}



      #@players.count.times do |index|
      #  @player_rank[index]=@player_score_for_client.index(@player_score_for_client.max)
      #
      #  @player_score_for_client[@player_rank[index]]=0
      #end


      if client.diversification_intent==true
        @distribution=[]

        begin
          @distribution[@distribution.count]=[client.diversification_intent_value,100/Player.all.count].max
        end while @distribution.inject(:+)<=100
        @distribution.delete_at(@distribution.count-1)


        @distribution.each do |distribution|
          distribution+=rand(100-@distribution.inject(:+))
        end
        @distribution[@distribution.count-1]+=100-@distribution.inject(:+)
        @distribution.sort.reverse!
        #return @distribution
        @client_balance=(50+rand(10))*5000

        @distribution.each_with_index do |element, index|
          ClientPlayer.create!(:round_id => self.id, :player_id => @players_ids[index], :client_id=>client.id, :amount=>@client_balance*element/100)
        end

        #@player_ids.each_with_index do |player_id, index|
        #  ClientPlayer.create!(:round_id => self.id, :player_id => player_id, :client_id=>client.id, :amount=>@client_balance*@distribution[index]/100)
        #end
      else
        ClientPlayer.create!(:round_id => self.id, :player_id => @players_ids[0], :client_id=>client.id, :amount=>@client_balance)
      end
    end
  end

  def self.create_rounds_from_simulation(simulation_id)
    @simulation=Simulation.find(simulation_id)
    @simulation.no_of_rounds.times do |i|
      @round=Round.new
      @round.simulation_id=@simulation.id
      @round.number=i+1
      @round.save!
    end
  end
end
