class EconomicParameterValuesController < ApplicationController
  # GET /economic_parameter_values
  # GET /economic_parameter_values.json
  def index
    @economic_parameter_values = EconomicParameterValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @economic_parameter_values }
    end
  end

  # GET /economic_parameter_values/1
  # GET /economic_parameter_values/1.json
  def show
    @economic_parameter_value = EconomicParameterValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @economic_parameter_value }
    end
  end

  # GET /economic_parameter_values/new
  # GET /economic_parameter_values/new.json
  def new
    @economic_parameter_value = EconomicParameterValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @economic_parameter_value }
    end
  end

  # GET /economic_parameter_values/1/edit
  def edit
    @economic_parameter_value = EconomicParameterValue.find(params[:id])
  end

  # POST /economic_parameter_values
  # POST /economic_parameter_values.json
  def create
    @economic_parameter_value = EconomicParameterValue.new(params[:economic_parameter_value])

    respond_to do |format|
      if @economic_parameter_value.save
        format.html { redirect_to @economic_parameter_value, notice: 'Economic parameter value was successfully created.' }
        format.json { render json: @economic_parameter_value, status: :created, location: @economic_parameter_value }
      else
        format.html { render action: "new" }
        format.json { render json: @economic_parameter_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /economic_parameter_values/1
  # PUT /economic_parameter_values/1.json
  def update
    @economic_parameter_value = EconomicParameterValue.find(params[:id])

    respond_to do |format|
      if @economic_parameter_value.update_attributes(params[:economic_parameter_value])
        format.html { redirect_to @economic_parameter_value, notice: 'Economic parameter value was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @economic_parameter_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /economic_parameter_values/1
  # DELETE /economic_parameter_values/1.json
  def destroy
    @economic_parameter_value = EconomicParameterValue.find(params[:id])
    @economic_parameter_value.destroy

    respond_to do |format|
      format.html { redirect_to economic_parameter_values_url }
      format.json { head :ok }
    end
  end
end
