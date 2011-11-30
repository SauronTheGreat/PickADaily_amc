class DebtPaperPricesController < ApplicationController
  # GET /debt_paper_prices
  # GET /debt_paper_prices.json
  def index
    @debt_paper_prices = DebtPaperPrice.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @debt_paper_prices }
    end
  end

  # GET /debt_paper_prices/1
  # GET /debt_paper_prices/1.json
  def show
    @debt_paper_price = DebtPaperPrice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @debt_paper_price }
    end
  end

  # GET /debt_paper_prices/new
  # GET /debt_paper_prices/new.json
  def new
    @debt_paper_price = DebtPaperPrice.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @debt_paper_price }
    end
  end

  # GET /debt_paper_prices/1/edit
  def edit
    @debt_paper_price = DebtPaperPrice.find(params[:id])
  end

  # POST /debt_paper_prices
  # POST /debt_paper_prices.json
  def create
    @debt_paper_price = DebtPaperPrice.new(params[:debt_paper_price])

    respond_to do |format|
      if @debt_paper_price.save
        format.html { redirect_to @debt_paper_price, notice: 'Debt paper price was successfully created.' }
        format.json { render json: @debt_paper_price, status: :created, location: @debt_paper_price }
      else
        format.html { render action: "new" }
        format.json { render json: @debt_paper_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /debt_paper_prices/1
  # PUT /debt_paper_prices/1.json
  def update
    @debt_paper_price = DebtPaperPrice.find(params[:id])

    respond_to do |format|
      if @debt_paper_price.update_attributes(params[:debt_paper_price])
        format.html { redirect_to @debt_paper_price, notice: 'Debt paper price was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @debt_paper_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debt_paper_prices/1
  # DELETE /debt_paper_prices/1.json
  def destroy
    @debt_paper_price = DebtPaperPrice.find(params[:id])
    @debt_paper_price.destroy

    respond_to do |format|
      format.html { redirect_to debt_paper_prices_url }
      format.json { head :ok }
    end
  end
end
