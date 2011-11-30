class WelcomeController < ApplicationController
  def index
    if(current_user.student)
      redirect_to :controller => :trader_selected_company,:action => "index",:trader_id=>1
    end

  end

  def landing_page


    if current_user
      if current_user.student
        @student_group_users=StudentGroupUser.find_all_by_user_id(current_user.id)

        @simulations=Array.new
        @players=Array.new
        @student_group_users.each do |sguser|
          @simulations << Simulation.find_by_student_group_id(sguser.student_group_id)
          @players << Player.find_by_student_group_user_id(sguser.id)
        end


      end
    end

  end

  def decision_page
    @player=Player.find(params[:player_id])
    @simulation=Simulation.find(ActiveRound.first.simulation_id)
    @round=Round.find(ActiveRound.first.round_id)


  end

  def transaction_page


  end

end
