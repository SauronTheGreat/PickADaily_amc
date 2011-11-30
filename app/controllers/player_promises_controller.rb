class PlayerPromisesController < ApplicationController
  # GET /player_promises
  # GET /player_promises.json
  def index
    @player=Player.find(params[:player_id])
    @round=Round.find(ActiveRound.first.round_id)
    @player_promises = @player.player_promises

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_promises }
    end
  end

  # GET /player_promises/1
  # GET /player_promises/1.json
  def show
    @player_promise = PlayerPromise.find(params[:id])
    @player=Player.find(@player_promise.player_id)
    @round=Round.find(ActiveRound.first.round_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_promise }
    end
  end

  # GET /player_promises/new
  # GET /player_promises/new.json
  def new
    @player=Player.find(params[:player_id])
    @round=Round.find(ActiveRound.first.round_id)
    @player_promise = PlayerPromise.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_promise }
    end
  end

  # GET /player_promises/1/edit
  def edit
    @player_promise = PlayerPromise.find(params[:id])
    @player=Player.find(params[:player_id])
          @round=Round.find(ActiveRound.first.round_id)

  end

  # POST /player_promises
  # POST /player_promises.json
  def create
    @player_promise = PlayerPromise.new(params[:player_promise])

    respond_to do |format|
      if @player_promise.save
        format.html { redirect_to @player_promise, notice: 'Player promise was successfully created.' }
        format.json { render json: @player_promise, status: :created, location: @player_promise }
      else
        format.html { render action: "new" }
        format.json { render json: @player_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_promises/1
  # PUT /player_promises/1.json
  def update
    @player_promise = PlayerPromise.find(params[:id])

    respond_to do |format|
      if @player_promise.update_attributes(params[:player_promise])
        format.html { redirect_to @player_promise, notice: 'Player promise was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_promise.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_promises/1
  # DELETE /player_promises/1.json
  def destroy
    @player_promise = PlayerPromise.find(params[:id])
    @player_promise.destroy

    respond_to do |format|
      format.html { redirect_to player_promises_url }
      format.json { head :ok }
    end
  end
end
