class NewsSectorsController < ApplicationController
  # GET /news_sectors
  # GET /news_sectors.json
  def index
    @news_sectors = NewsSector.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @news_sectors }
    end
  end

  # GET /news_sectors/1
  # GET /news_sectors/1.json
  def show
    @news_sector = NewsSector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @news_sector }
    end
  end

  # GET /news_sectors/new
  # GET /news_sectors/new.json
  def new
    @sectors=Sector.all
    @news_sectors =Array.new(@sectors.count){ NewsSector.new}



    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @news_sector }
    end
  end

  # GET /news_sectors/1/edit
  def edit
    @news_sector = NewsSector.find(params[:id])
  end

  # POST /news_sectors
  # POST /news_sectors.json
  def create
    #@news_sector = NewsSector.new(params[:news_sector])

    @news_sectors = params[:news_sectors].values.collect { |news_sector| NewsSector.new(news_sector) }

       @news_sectors.each do |news_sector|
         if news_sector.sector_id!=0
         news_sector.save!
           end
       end


    respond_to do |format|
      if @news_sectors.all?(&:valid?)
        format.html { redirect_to news_path(News.find(@news_sectors[0].news_id)), notice: 'News company was successfully created.' }
        format.json { render json: @news_sector, status: :created, location: @news_sector }
      else
        format.html { render action: "new" }
        format.json { render json: @news_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /news_sectors/1
  # PUT /news_sectors/1.json
  def update
    @news_sector = NewsSector.find(params[:id])

    respond_to do |format|
      if @news_sector.update_attributes(params[:news_sector])
        format.html { redirect_to @news_sector, notice: 'News sector was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @news_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_sectors/1
  # DELETE /news_sectors/1.json
  def destroy
    @news_sector = NewsSector.find(params[:id])
    @news_sector.destroy

    respond_to do |format|
      format.html { redirect_to news_sectors_url }
      format.json { head :ok }
    end
  end
end
