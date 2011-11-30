class RoundNewsController < ApplicationController
  # GET /round_news
  # GET /round_news.json
  def index
    @round_news = RoundNews.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @round_news }
    end
  end

  # GET /round_news/1
  # GET /round_news/1.json
  def show
    @round_news = RoundNews.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @round_news }
    end
  end

  # GET /round_news/new
  # GET /round_news/new.json
  def new
    @round_news = RoundNews.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @round_news }
    end
  end

  # GET /round_news/1/edit
  def edit
    @round_news = RoundNews.find(params[:id])
  end

  # POST /round_news
  # POST /round_news.json
  def create
    @round_news = RoundNews.new(params[:round_news])

    respond_to do |format|
      if @round_news.save
        format.html { redirect_to @round_news, notice: 'Round news was successfully created.' }
        format.json { render json: @round_news, status: :created, location: @round_news }
      else
        format.html { render action: "new" }
        format.json { render json: @round_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /round_news/1
  # PUT /round_news/1.json
  def update
    @round_news = RoundNews.find(params[:id])

    respond_to do |format|
      if @round_news.update_attributes(params[:round_news])
        format.html { redirect_to @round_news, notice: 'Round news was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @round_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /round_news/1
  # DELETE /round_news/1.json
  def destroy
    @round_news = RoundNews.find(params[:id])
    @round_news.destroy

    respond_to do |format|
      format.html { redirect_to round_news_index_url }
      format.json { head :ok }
    end
  end
end
