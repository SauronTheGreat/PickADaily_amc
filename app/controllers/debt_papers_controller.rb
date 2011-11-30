class DebtPapersController < ApplicationController
  # GET /debt_papers
  # GET /debt_papers.json
  def index
    @debt_papers = DebtPaper.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @debt_papers }
    end
  end

  # GET /debt_papers/1
  # GET /debt_papers/1.json
  def show
    @debt_paper = DebtPaper.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @debt_paper }
    end
  end

  # GET /debt_papers/new
  # GET /debt_papers/new.json
  def new
    @debt_paper = DebtPaper.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @debt_paper }
    end
  end

  # GET /debt_papers/1/edit
  def edit
    @debt_paper = DebtPaper.find(params[:id])
  end

  # POST /debt_papers
  # POST /debt_papers.json
  def create
    @debt_paper = DebtPaper.new(params[:debt_paper])

    respond_to do |format|
      if @debt_paper.save
        format.html { redirect_to @debt_paper, notice: 'Debt paper was successfully created.' }
        format.json { render json: @debt_paper, status: :created, location: @debt_paper }
      else
        format.html { render action: "new" }
        format.json { render json: @debt_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /debt_papers/1
  # PUT /debt_papers/1.json
  def update
    @debt_paper = DebtPaper.find(params[:id])

    respond_to do |format|
      if @debt_paper.update_attributes(params[:debt_paper])
        format.html { redirect_to @debt_paper, notice: 'Debt paper was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @debt_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debt_papers/1
  # DELETE /debt_papers/1.json
  def destroy
    @debt_paper = DebtPaper.find(params[:id])
    @debt_paper.destroy

    respond_to do |format|
      format.html { redirect_to debt_papers_url }
      format.json { head :ok }
    end
  end
end
