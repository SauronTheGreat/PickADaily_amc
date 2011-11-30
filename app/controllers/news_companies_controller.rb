class NewsCompaniesController < ApplicationController
  # GET /news_companies
  # GET /news_companies.json
  def index
    @news_companies = NewsCompany.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news_companies }
    end
  end

  # GET /news_companies/1
  # GET /news_companies/1.json
  def show
    @news_company = NewsCompany.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news_company }
    end
  end

  # GET /news_companies/new
  # GET /news_companies/new.json
  def new
    @news_company = NewsCompany.new
    @news_companies=Array.new(Company.all.count){NewsCompany.new}
    @companies=Company.all

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @news_company }
    end
  end

  # GET /news_companies/1/edit
  def edit
    @news_company = NewsCompany.find(params[:id])
  end

  # POST /news_companies
  # POST /news_companies.json
  def create
    #@news_company = NewsCompany.new(params[:news_company])
    @news_companies = params[:news_companies].values.collect { |news_company| NewsCompany.new(news_company) }

    @news_companies.each do |news_company|
      if news_company.company_id!=0
      news_company.save!
        end
    end


    respond_to do |format|
      if @news_companies.all?(&:valid?)
        format.html { redirect_to news_path(News.find(@news_companies[0].news_id)), notice: 'News company was successfully created.' }
        format.json { render json: @news_company, status: :created, location: @news_company }
      else
        format.html { render action: "new" }
        format.json { render json: @news_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /news_companies/1
  # PUT /news_companies/1.json
  def update
    @news_company = NewsCompany.find(params[:id])

    respond_to do |format|
      if @news_company.update_attributes(params[:news_company])
        format.html { redirect_to @news_company, notice: 'News company was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @news_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_companies/1
  # DELETE /news_companies/1.json
  def destroy
    @news_company = NewsCompany.find(params[:id])
    @news_company.destroy

    respond_to do |format|
      format.html { redirect_to news_companies_url }
      format.json { head :ok }
    end
  end
end
