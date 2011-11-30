class ClientEarningsController < ApplicationController
  # GET /client_earnings
  # GET /client_earnings.json
  def index
    @client_earnings = ClientEarning.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_earnings }
    end
  end

  # GET /client_earnings/1
  # GET /client_earnings/1.json
  def show
    @client_earning = ClientEarning.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_earning }
    end
  end

  # GET /client_earnings/new
  # GET /client_earnings/new.json
  def new
    @client_earning = ClientEarning.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client_earning }
    end
  end

  # GET /client_earnings/1/edit
  def edit
    @client_earning = ClientEarning.find(params[:id])
  end

  # POST /client_earnings
  # POST /client_earnings.json
  def create
    @client_earning = ClientEarning.new(params[:client_earning])

    respond_to do |format|
      if @client_earning.save
        format.html { redirect_to @client_earning, notice: 'Client earning was successfully created.' }
        format.json { render json: @client_earning, status: :created, location: @client_earning }
      else
        format.html { render action: "new" }
        format.json { render json: @client_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_earnings/1
  # PUT /client_earnings/1.json
  def update
    @client_earning = ClientEarning.find(params[:id])

    respond_to do |format|
      if @client_earning.update_attributes(params[:client_earning])
        format.html { redirect_to @client_earning, notice: 'Client earning was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_earnings/1
  # DELETE /client_earnings/1.json
  def destroy
    @client_earning = ClientEarning.find(params[:id])
    @client_earning.destroy

    respond_to do |format|
      format.html { redirect_to client_earnings_url }
      format.json { head :ok }
    end
  end
end
