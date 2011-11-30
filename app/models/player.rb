class Player < ActiveRecord::Base
  #relationships
  has_many :player_fee_structures   ,:dependent => :destroy
  has_many :portfolio_allocations,:dependent => :destroy
  has_many :player_promises



  def self.create_players_from_student_group(simulation_id)

      @simulation=Simulation.find(simulation_id)
      @student_group=StudentGroup.find(@simulation.student_group_id)

      @student_group_users=@student_group.student_group_users
      @round=Round.find_by_simulation_id_and_number(@simulation.id, 0)
      @student_group_users.each do |sguser|
        @player=Player.new
        @player.played=false
        @player.student_group_user_id=sguser.id
        @player.simulation_id=simulation_id
        @player.save!
      end
    end

end
