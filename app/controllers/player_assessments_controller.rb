class PlayerAssessmentsController < ApplicationController
  # GET /player_assessments
  # GET /player_assessments.json
  def index
    @player_assessments = PlayerAssessment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_assessments }
    end
  end

  # GET /player_assessments/1
  # GET /player_assessments/1.json
  def show
    @player_assessment = PlayerAssessment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_assessment }
    end
  end

  # GET /player_assessments/new
  # GET /player_assessments/new.json
  def new
    @player_assessment = PlayerAssessment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_assessment }
    end
  end

  # GET /player_assessments/1/edit
  def edit
    @player_assessment = PlayerAssessment.find(params[:id])
  end

  # POST /player_assessments
  # POST /player_assessments.json
  def create
    @player_assessment = PlayerAssessment.new(params[:player_assessment])

    respond_to do |format|
      if @player_assessment.save
        format.html { redirect_to @player_assessment, notice: 'Player assessment was successfully created.' }
        format.json { render json: @player_assessment, status: :created, location: @player_assessment }
      else
        format.html { render action: "new" }
        format.json { render json: @player_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_assessments/1
  # PUT /player_assessments/1.json
  def update
    @player_assessment = PlayerAssessment.find(params[:id])

    respond_to do |format|
      if @player_assessment.update_attributes(params[:player_assessment])
        format.html { redirect_to @player_assessment, notice: 'Player assessment was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_assessments/1
  # DELETE /player_assessments/1.json
  def destroy
    @player_assessment = PlayerAssessment.find(params[:id])
    @player_assessment.destroy

    respond_to do |format|
      format.html { redirect_to player_assessments_url }
      format.json { head :ok }
    end
  end
end
