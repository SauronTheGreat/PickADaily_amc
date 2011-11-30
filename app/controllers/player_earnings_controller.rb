class PlayerEarningsController < ApplicationController
  # GET /player_earnings
  # GET /player_earnings.json
  def index
    @player_earnings = PlayerEarning.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_earnings }
    end
  end

  # GET /player_earnings/1
  # GET /player_earnings/1.json
  def show
    @player_earning = PlayerEarning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_earning }
    end
  end

  # GET /player_earnings/new
  # GET /player_earnings/new.json
  def new
    @player_earning = PlayerEarning.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_earning }
    end
  end

  # GET /player_earnings/1/edit
  def edit
    @player_earning = PlayerEarning.find(params[:id])
  end

  # POST /player_earnings
  # POST /player_earnings.json
  def create
    @player_earning = PlayerEarning.new(params[:player_earning])

    respond_to do |format|
      if @player_earning.save
        format.html { redirect_to @player_earning, notice: 'Player earning was successfully created.' }
        format.json { render json: @player_earning, status: :created, location: @player_earning }
      else
        format.html { render action: "new" }
        format.json { render json: @player_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_earnings/1
  # PUT /player_earnings/1.json
  def update
    @player_earning = PlayerEarning.find(params[:id])

    respond_to do |format|
      if @player_earning.update_attributes(params[:player_earning])
        format.html { redirect_to @player_earning, notice: 'Player earning was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_earnings/1
  # DELETE /player_earnings/1.json
  def destroy
    @player_earning = PlayerEarning.find(params[:id])
    @player_earning.destroy

    respond_to do |format|
      format.html { redirect_to player_earnings_url }
      format.json { head :ok }
    end
  end
end
