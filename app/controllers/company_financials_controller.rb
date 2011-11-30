class CompanyFinancialsController < ApplicationController
  # GET /company_financials
  # GET /company_financials.json
  def index
    @company_financials = CompanyFinancial.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @company_financials }
    end
  end

  # GET /company_financials/1
  # GET /company_financials/1.json
  def show
    @company_financial = CompanyFinancial.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @company_financial }
    end
  end

  # GET /company_financials/new
  # GET /company_financials/new.json
  def new
    @company_financial = CompanyFinancial.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @company_financial }
    end
  end

  # GET /company_financials/1/edit
  def edit
    @company_financial = CompanyFinancial.find(params[:id])
  end

  # POST /company_financials
  # POST /company_financials.json
  def create
    @company_financial = CompanyFinancial.new(params[:company_financial])

    respond_to do |format|
      if @company_financial.save
        format.html { redirect_to @company_financial, notice: 'Company financial was successfully created.' }
        format.json { render json: @company_financial, status: :created, location: @company_financial }
      else
        format.html { render action: "new" }
        format.json { render json: @company_financial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /company_financials/1
  # PUT /company_financials/1.json
  def update
    @company_financial = CompanyFinancial.find(params[:id])

    respond_to do |format|
      if @company_financial.update_attributes(params[:company_financial])
        format.html { redirect_to @company_financial, notice: 'Company financial was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @company_financial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_financials/1
  # DELETE /company_financials/1.json
  def destroy
    @company_financial = CompanyFinancial.find(params[:id])
    @company_financial.destroy

    respond_to do |format|
      format.html { redirect_to company_financials_url }
      format.json { head :ok }
    end
  end
end
