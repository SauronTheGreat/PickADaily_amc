class EconomicParametersController < ApplicationController
  # GET /economic_parameters
  # GET /economic_parameters.json
  def index
    @economic_parameters = EconomicParameter.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economic_parameters }
    end
  end

  # GET /economic_parameters/1
  # GET /economic_parameters/1.json
  def show
    @economic_parameter = EconomicParameter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economic_parameter }
    end
  end

  # GET /economic_parameters/new
  # GET /economic_parameters/new.json
  def new
    @economic_parameter = EconomicParameter.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economic_parameter }
    end
  end

  # GET /economic_parameters/1/edit
  def edit
    @economic_parameter = EconomicParameter.find(params[:id])
  end

  # POST /economic_parameters
  # POST /economic_parameters.json
  def create
    @economic_parameter = EconomicParameter.new(params[:economic_parameter])

    respond_to do |format|
      if @economic_parameter.save
        format.html { redirect_to @economic_parameter, notice: 'Economic parameter was successfully created.' }
        format.json { render json: @economic_parameter, status: :created, location: @economic_parameter }
      else
        format.html { render action: "new" }
        format.json { render json: @economic_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economic_parameters/1
  # PUT /economic_parameters/1.json
  def update
    @economic_parameter = EconomicParameter.find(params[:id])

    respond_to do |format|
      if @economic_parameter.update_attributes(params[:economic_parameter])
        format.html { redirect_to @economic_parameter, notice: 'Economic parameter was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @economic_parameter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economic_parameters/1
  # DELETE /economic_parameters/1.json
  def destroy
    @economic_parameter = EconomicParameter.find(params[:id])
    @economic_parameter.destroy

    respond_to do |format|
      format.html { redirect_to economic_parameters_url }
      format.json { head :ok }
    end
  end
end
