class StockPricesController < ApplicationController
  # GET /stock_prices
  # GET /stock_prices.json
  def index
    @stock_prices = StockPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stock_prices }
    end
  end

  # GET /stock_prices/1
  # GET /stock_prices/1.json
  def show
    @stock_price = StockPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stock_price }
    end
  end

  # GET /stock_prices/new
  # GET /stock_prices/new.json
  def new
    @stock_price = StockPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stock_price }
    end
  end

  # GET /stock_prices/1/edit
  def edit
    @stock_price = StockPrice.find(params[:id])
  end

  # POST /stock_prices
  # POST /stock_prices.json
  def create
    @stock_price = StockPrice.new(params[:stock_price])

    respond_to do |format|
      if @stock_price.save
        format.html { redirect_to @stock_price, notice: 'Stock price was successfully created.' }
        format.json { render json: @stock_price, status: :created, location: @stock_price }
      else
        format.html { render action: "new" }
        format.json { render json: @stock_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stock_prices/1
  # PUT /stock_prices/1.json
  def update
    @stock_price = StockPrice.find(params[:id])

    respond_to do |format|
      if @stock_price.update_attributes(params[:stock_price])
        format.html { redirect_to @stock_price, notice: 'Stock price was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @stock_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_prices/1
  # DELETE /stock_prices/1.json
  def destroy
    @stock_price = StockPrice.find(params[:id])
    @stock_price.destroy

    respond_to do |format|
      format.html { redirect_to stock_prices_url }
      format.json { head :ok }
    end
  end

  require 'date'

  def get_stock_prices_in_json
    company=Company.find(params[:company_id].to_i)
    stock=Stock.find_by_company_id(company.id)
    @prices=stock.stock_prices.where("round_id=?", ActiveRound.first.round_id).select(["open", "high", "low", "close", "month_number"])
    #  @prices=StockPrice.where("round_id=? and stock_id=?",ActiveRound.first.round_id,stock.id).select(["open", "high", "low", "close","month_number"])

    @ohlc=Array.new


    month=""
    @prices.each_with_index do |price, index|
      @temp=Array.new

      case price.month_number
        when 1 then
          month="January"
        when 2 then
          month="February"
        when 3 then
          month="March"
        when 4 then
          month="April"
        when 5 then
          month="May"
        when 6 then
          month="June"

      end
      @temp <<month.to_s
      @temp<< price.low
      @temp << price.open
      @temp << price.close
      @temp << price.high

      @ohlc << @temp


    end
    @ohlc << company.name

    render :json=>@ohlc.to_json

  end

  def get_current_stock_price
    company=Company.find(params[:company_id].to_i)
    stock=Stock.find_by_company_id(company.id)
    @prices=stock.stock_prices.where("round_id=? and month_number=?", ActiveRound.first.round_id,params[:month_number]).select(["open", "high", "low", "close"])
    @current_ohlc=Array.new

    @prices.each do |price|

      @current_ohlc << price.low
      @current_ohlc << price.open
      @current_ohlc << price.close
      @current_ohlc << price.high


    end


    render :json=>@current_ohlc.to_json

  end
end
