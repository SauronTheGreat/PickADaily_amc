class PlayerTransactionsController < ApplicationController
  # GET /player_transactions
  # GET /player_transactions.json
  def index
    @player_transactions = PlayerTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @player_transactions }
    end
  end

  # GET /player_transactions/1
  # GET /player_transactions/1.json
  def show
    @player_transaction = PlayerTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @player_transaction }
    end
  end

  # GET /player_transactions/new
  # GET /player_transactions/new.json
  def new
    @player_transaction = PlayerTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @player_transaction }
    end
  end

  # GET /player_transactions/1/edit
  def edit
    @player_transaction = PlayerTransaction.find(params[:id])
  end

  # POST /player_transactions
  # POST /player_transactions.json
  def create
    @player_transaction = PlayerTransaction.new(params[:player_transaction])

    respond_to do |format|
      if @player_transaction.save
        format.html { redirect_to @player_transaction, notice: 'Player transaction was successfully created.' }
        format.json { render json: @player_transaction, status: :created, location: @player_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @player_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /player_transactions/1
  # PUT /player_transactions/1.json
  def update
    @player_transaction = PlayerTransaction.find(params[:id])

    respond_to do |format|
      if @player_transaction.update_attributes(params[:player_transaction])
        format.html { redirect_to @player_transaction, notice: 'Player transaction was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @player_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_transactions/1
  # DELETE /player_transactions/1.json
  def destroy
    @player_transaction = PlayerTransaction.find(params[:id])
    @player_transaction.destroy

    respond_to do |format|
      format.html { redirect_to player_transactions_url }
      format.json { head :ok }
    end
  end
end
