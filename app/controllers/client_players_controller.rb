class ClientPlayersController < ApplicationController
  # GET /client_players
  # GET /client_players.json
  def index
    @client_players = ClientPlayer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_players }
    end
  end

  # GET /client_players/1
  # GET /client_players/1.json
  def show
    @client_player = ClientPlayer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_player }
    end
  end

  # GET /client_players/new
  # GET /client_players/new.json
  def new
    @client_player = ClientPlayer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client_player }
    end
  end

  # GET /client_players/1/edit
  def edit
    @client_player = ClientPlayer.find(params[:id])
  end

  # POST /client_players
  # POST /client_players.json
  def create
    @client_player = ClientPlayer.new(params[:client_player])

    respond_to do |format|
      if @client_player.save
        format.html { redirect_to @client_player, notice: 'Client player was successfully created.' }
        format.json { render json: @client_player, status: :created, location: @client_player }
      else
        format.html { render action: "new" }
        format.json { render json: @client_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_players/1
  # PUT /client_players/1.json
  def update
    @client_player = ClientPlayer.find(params[:id])

    respond_to do |format|
      if @client_player.update_attributes(params[:client_player])
        format.html { redirect_to @client_player, notice: 'Client player was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_players/1
  # DELETE /client_players/1.json
  def destroy
    @client_player = ClientPlayer.find(params[:id])
    @client_player.destroy

    respond_to do |format|
      format.html { redirect_to client_players_url }
      format.json { head :ok }
    end
  end
end
