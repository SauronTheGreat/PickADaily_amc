class PlayerFeeStructuresController < ApplicationController
  # GET /player_fee_structures
  # GET /player_fee_structures.json
  def index
    @player=Player.find(params[:player_id])

    @player_fee_structures = @player.player_fee_structures

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_fee_structures }
    end
  end

  # GET /player_fee_structures/1
  # GET /player_fee_structures/1.json
  def show
    @player_fee_structure = PlayerFeeStructure.find(params[:id])
    @player=Player.find(@player_fee_structure.player_id)

    @round=Round.find(ActiveRound.first.round_id)


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_fee_structure }
    end
  end

  # GET /player_fee_structures/new
  # GET /player_fee_structures/new.json
  def new
    @player=Player.find(params[:player_id])
    @round=Round.find(ActiveRound.first.round_id)

    @player_fee_structure = PlayerFeeStructure.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_fee_structure }
    end
  end

  # GET /player_fee_structures/1/edit
  def edit
    @player=Player.find(params[:player_id])
    @round=Round.find(ActiveRound.first.round_id)


    @player_fee_structure = PlayerFeeStructure.find(params[:id])
  end

  # POST /player_fee_structures
  # POST /player_fee_structures.json
  def create
    @player_fee_structure = PlayerFeeStructure.new(params[:player_fee_structure])

    respond_to do |format|
      if @player_fee_structure.save
        format.html { redirect_to @player_fee_structure, notice: 'Player fee structure was successfully created.' }
        format.json { render json: @player_fee_structure, status: :created, location: @player_fee_structure }
      else
        format.html { render action: "new" }
        format.json { render json: @player_fee_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_fee_structures/1
  # PUT /player_fee_structures/1.json
  def update
    @player_fee_structure = PlayerFeeStructure.find(params[:id])

    respond_to do |format|
      if @player_fee_structure.update_attributes(params[:player_fee_structure])
        format.html { redirect_to @player_fee_structure, notice: 'Player fee structure was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_fee_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_fee_structures/1
  # DELETE /player_fee_structures/1.json
  def destroy
    @player_fee_structure = PlayerFeeStructure.find(params[:id])
    @player_fee_structure.destroy

    respond_to do |format|
      format.html { redirect_to player_fee_structures_url }
      format.json { head :ok }
    end
  end
end
