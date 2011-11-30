class FixedDepositsController < ApplicationController
  # GET /fixed_deposits
  # GET /fixed_deposits.json
  def index
    @fixed_deposits = FixedDeposit.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fixed_deposits }
    end
  end

  # GET /fixed_deposits/1
  # GET /fixed_deposits/1.json
  def show
    @fixed_deposit = FixedDeposit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fixed_deposit }
    end
  end

  # GET /fixed_deposits/new
  # GET /fixed_deposits/new.json
  def new
    @fixed_deposit = FixedDeposit.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fixed_deposit }
    end
  end

  # GET /fixed_deposits/1/edit
  def edit
    @fixed_deposit = FixedDeposit.find(params[:id])
  end

  # POST /fixed_deposits
  # POST /fixed_deposits.json
  def create
    @fixed_deposit = FixedDeposit.new(params[:fixed_deposit])

    respond_to do |format|
      if @fixed_deposit.save
        format.html { redirect_to @fixed_deposit, notice: 'Fixed deposit was successfully created.' }
        format.json { render json: @fixed_deposit, status: :created, location: @fixed_deposit }
      else
        format.html { render action: "new" }
        format.json { render json: @fixed_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fixed_deposits/1
  # PUT /fixed_deposits/1.json
  def update
    @fixed_deposit = FixedDeposit.find(params[:id])

    respond_to do |format|
      if @fixed_deposit.update_attributes(params[:fixed_deposit])
        format.html { redirect_to @fixed_deposit, notice: 'Fixed deposit was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @fixed_deposit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_deposits/1
  # DELETE /fixed_deposits/1.json
  def destroy
    @fixed_deposit = FixedDeposit.find(params[:id])
    @fixed_deposit.destroy

    respond_to do |format|
      format.html { redirect_to fixed_deposits_url }
      format.json { head :ok }
    end
  end
end
