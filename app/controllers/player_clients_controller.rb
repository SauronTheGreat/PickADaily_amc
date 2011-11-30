class PlayerClientsController < ApplicationController
  # GET /player_clients
  # GET /player_clients.json
  def index
    @player_clients = PlayerClient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_clients }
    end
  end

  # GET /player_clients/1
  # GET /player_clients/1.json
  def show
    @player_client = PlayerClient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_client }
    end
  end

  # GET /player_clients/new
  # GET /player_clients/new.json
  def new
    @player_client = PlayerClient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_client }
    end
  end

  # GET /player_clients/1/edit
  def edit
    @player_client = PlayerClient.find(params[:id])
  end

  # POST /player_clients
  # POST /player_clients.json
  def create
    @player_client = PlayerClient.new(params[:player_client])

    respond_to do |format|
      if @player_client.save
        format.html { redirect_to @player_client, notice: 'Player client was successfully created.' }
        format.json { render json: @player_client, status: :created, location: @player_client }
      else
        format.html { render action: "new" }
        format.json { render json: @player_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_clients/1
  # PUT /player_clients/1.json
  def update
    @player_client = PlayerClient.find(params[:id])

    respond_to do |format|
      if @player_client.update_attributes(params[:player_client])
        format.html { redirect_to @player_client, notice: 'Player client was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_clients/1
  # DELETE /player_clients/1.json
  def destroy
    @player_client = PlayerClient.find(params[:id])
    @player_client.destroy

    respond_to do |format|
      format.html { redirect_to player_clients_url }
      format.json { head :ok }
    end
  end
end
