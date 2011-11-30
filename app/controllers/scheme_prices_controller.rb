class SchemePricesController < ApplicationController
  # GET /scheme_prices
  # GET /scheme_prices.json
  def index
    @scheme_prices = SchemePrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scheme_prices }
    end
  end

  # GET /scheme_prices/1
  # GET /scheme_prices/1.json
  def show
    @scheme_price = SchemePrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scheme_price }
    end
  end

  # GET /scheme_prices/new
  # GET /scheme_prices/new.json
  def new
    @scheme_price = SchemePrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scheme_price }
    end
  end

  # GET /scheme_prices/1/edit
  def edit
    @scheme_price = SchemePrice.find(params[:id])
  end

  # POST /scheme_prices
  # POST /scheme_prices.json
  def create
    @scheme_price = SchemePrice.new(params[:scheme_price])

    respond_to do |format|
      if @scheme_price.save
        format.html { redirect_to @scheme_price, notice: 'Scheme price was successfully created.' }
        format.json { render json: @scheme_price, status: :created, location: @scheme_price }
      else
        format.html { render action: "new" }
        format.json { render json: @scheme_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scheme_prices/1
  # PUT /scheme_prices/1.json
  def update
    @scheme_price = SchemePrice.find(params[:id])

    respond_to do |format|
      if @scheme_price.update_attributes(params[:scheme_price])
        format.html { redirect_to @scheme_price, notice: 'Scheme price was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @scheme_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheme_prices/1
  # DELETE /scheme_prices/1.json
  def destroy
    @scheme_price = SchemePrice.find(params[:id])
    @scheme_price.destroy

    respond_to do |format|
      format.html { redirect_to scheme_prices_url }
      format.json { head :ok }
    end
  end
end
