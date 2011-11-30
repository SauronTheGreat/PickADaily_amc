class GoldPricesController < ApplicationController
  # GET /gold_prices
  # GET /gold_prices.json
  def index
    @gold_prices = GoldPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gold_prices }
    end
  end

  # GET /gold_prices/1
  # GET /gold_prices/1.json
  def show
    @gold_price = GoldPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gold_price }
    end
  end

  # GET /gold_prices/new
  # GET /gold_prices/new.json
  def new
    @gold_price = GoldPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gold_price }
    end
  end

  # GET /gold_prices/1/edit
  def edit
    @gold_price = GoldPrice.find(params[:id])
  end

  # POST /gold_prices
  # POST /gold_prices.json
  def create
    @gold_price = GoldPrice.new(params[:gold_price])

    respond_to do |format|
      if @gold_price.save
        format.html { redirect_to @gold_price, notice: 'Gold price was successfully created.' }
        format.json { render json: @gold_price, status: :created, location: @gold_price }
      else
        format.html { render action: "new" }
        format.json { render json: @gold_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /gold_prices/1
  # PUT /gold_prices/1.json
  def update
    @gold_price = GoldPrice.find(params[:id])

    respond_to do |format|
      if @gold_price.update_attributes(params[:gold_price])
        format.html { redirect_to @gold_price, notice: 'Gold price was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @gold_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gold_prices/1
  # DELETE /gold_prices/1.json
  def destroy
    @gold_price = GoldPrice.find(params[:id])
    @gold_price.destroy

    respond_to do |format|
      format.html { redirect_to gold_prices_url }
      format.json { head :ok }
    end
  end
end
