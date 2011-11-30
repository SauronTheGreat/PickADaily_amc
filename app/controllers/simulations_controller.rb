class SimulationsController < ApplicationController
  # GET /simulations
  # GET /simulations.json
  def index
    @simulations = Simulation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @simulations }
    end
  end

  # GET /simulations/1
  # GET /simulations/1.json
  def show
    @simulation = Simulation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @simulation }
    end
  end

  # GET /simulations/new
  # GET /simulations/new.json
  def new
    @simulation = Simulation.new
    @facilitator=Facilitator.find_by_user_id(current_user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @simulation }
    end
  end

  # GET /simulations/1/edit
  def edit
    @simulation = Simulation.find(params[:id])
  end

  # POST /simulations
  # POST /simulations.json
  def create
    @simulation = Simulation.new(params[:simulation])

    respond_to do |format|
      if @simulation.save
        format.html { redirect_to @simulation, notice: 'Simulation was successfully created.' }
        format.json { render json: @simulation, status: :created, location: @simulation }
      else
        format.html { render action: "new" }
        format.json { render json: @simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /simulations/1
  # PUT /simulations/1.json
  def update
    @simulation = Simulation.find(params[:id])

    respond_to do |format|
      if @simulation.update_attributes(params[:simulation])
        format.html { redirect_to @simulation, notice: 'Simulation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @simulation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simulations/1
  # DELETE /simulations/1.json
  def destroy
    @simulation = Simulation.find(params[:id])
    @simulation.destroy

    respond_to do |format|
      format.html { redirect_to simulations_url }
      format.json { head :ok }
    end
  end

  def initiate_simulation

    @simulation=Simulation.find(params[:simulation_id])
    if News.all.count>0
      Simulation.populate_news(@simulation.id)
    end
    Simulation.assign_constants_to_stock(@simulation.id)
    Simulation.price_generator(@simulation.id)
    Player.create_players_from_student_group(@simulation.id)
    @simulation.initiated=true
    @simulation.save!

    redirect_to @simulation

  end

  def initiate_round
    @simulation=Simulation.find(params[:simulation_id])
    @rounds=@simulation.rounds

  end

  def start_round
@round=Round.find(params[:round_id])
    @active_round=ActiveRound.new
    @active_round.round_id=@round.id
    @active_round.simulation_id=@round.simulation_id
    @active_round.save!
    redirect_to Simulation.find(@round.simulation_id)
  end

  def end_round

  end
end
