class ClientTransactionsController < ApplicationController
  # GET /client_transactions
  # GET /client_transactions.json
  def index
    @client_transactions = ClientTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @client_transactions }
    end
  end

  # GET /client_transactions/1
  # GET /client_transactions/1.json
  def show
    @client_transaction = ClientTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @client_transaction }
    end
  end

  # GET /client_transactions/new
  # GET /client_transactions/new.json
  def new
    @client_transaction = ClientTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @client_transaction }
    end
  end

  # GET /client_transactions/1/edit
  def edit
    @client_transaction = ClientTransaction.find(params[:id])
  end

  # POST /client_transactions
  # POST /client_transactions.json
  def create
    @client_transaction = ClientTransaction.new(params[:client_transaction])

    respond_to do |format|
      if @client_transaction.save
        format.html { redirect_to @client_transaction, notice: 'Client transaction was successfully created.' }
        format.json { render json: @client_transaction, status: :created, location: @client_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @client_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /client_transactions/1
  # PUT /client_transactions/1.json
  def update
    @client_transaction = ClientTransaction.find(params[:id])

    respond_to do |format|
      if @client_transaction.update_attributes(params[:client_transaction])
        format.html { redirect_to @client_transaction, notice: 'Client transaction was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @client_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /client_transactions/1
  # DELETE /client_transactions/1.json
  def destroy
    @client_transaction = ClientTransaction.find(params[:id])
    @client_transaction.destroy

    respond_to do |format|
      format.html { redirect_to client_transactions_url }
      format.json { head :ok }
    end
  end
end
