class RoundStockConstantsController < ApplicationController
  # GET /round_stock_constants
  # GET /round_stock_constants.json
  def index
    @round_stock_constants = RoundStockConstant.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @round_stock_constants }
    end
  end

  # GET /round_stock_constants/1
  # GET /round_stock_constants/1.json
  def show
    @round_stock_constant = RoundStockConstant.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @round_stock_constant }
    end
  end

  # GET /round_stock_constants/new
  # GET /round_stock_constants/new.json
  def new
    @round_stock_constant = RoundStockConstant.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @round_stock_constant }
    end
  end

  # GET /round_stock_constants/1/edit
  def edit
    @round_stock_constant = RoundStockConstant.find(params[:id])
  end

  # POST /round_stock_constants
  # POST /round_stock_constants.json
  def create
    @round_stock_constant = RoundStockConstant.new(params[:round_stock_constant])

    respond_to do |format|
      if @round_stock_constant.save
        format.html { redirect_to @round_stock_constant, notice: 'Round stock constant was successfully created.' }
        format.json { render json: @round_stock_constant, status: :created, location: @round_stock_constant }
      else
        format.html { render action: "new" }
        format.json { render json: @round_stock_constant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /round_stock_constants/1
  # PUT /round_stock_constants/1.json
  def update
    @round_stock_constant = RoundStockConstant.find(params[:id])

    respond_to do |format|
      if @round_stock_constant.update_attributes(params[:round_stock_constant])
        format.html { redirect_to @round_stock_constant, notice: 'Round stock constant was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @round_stock_constant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /round_stock_constants/1
  # DELETE /round_stock_constants/1.json
  def destroy
    @round_stock_constant = RoundStockConstant.find(params[:id])
    @round_stock_constant.destroy

    respond_to do |format|
      format.html { redirect_to round_stock_constants_url }
      format.json { head :ok }
    end
  end
end
