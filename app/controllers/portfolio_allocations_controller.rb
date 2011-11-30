class PortfolioAllocationsController < ApplicationController
  # GET /portfolio_allocations
  # GET /portfolio_allocations.json
  def index
    @player=Player.find(params[:player_id])
    @round=Round.find(ActiveRound.first.round_id)
    @portfolio_allocations = @player.portfolio_allocations



    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @portfolio_allocations }
    end
  end

  # GET /portfolio_allocations/1
  # GET /portfolio_allocations/1.json
  def show
    @portfolio_allocation = PortfolioAllocation.find(params[:id])
    @player=Player.find(@portfolio_allocation.player_id)
    @round=Round.find(ActiveRound.first.round_id)


    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @portfolio_allocation }
    end
  end

  # GET /portfolio_allocations/new
  # GET /portfolio_allocations/new.json
  def new
    @player=Player.find(params[:player_id])
    @round=Round.find(ActiveRound.first.round_id)
    @portfolio_allocation = PortfolioAllocation.new

    #if @player.portfolio_allocations.count>0

       @present_portfolio_allocations=@player.portfolio_allocations.map(&:investment_type_id)

       @possible_investment_types=InvestmentType.all.collect!{|investment_type| if !@present_portfolio_allocations.include?(investment_type.id) then [investment_type.name,investment_type.id] end}.compact
     #  else
      #   @possible_investment_types=InvestmentType.all
       #end


    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @portfolio_allocation }
    end
  end

  # GET /portfolio_allocations/1/edit
  def edit
    @portfolio_allocation = PortfolioAllocation.find(params[:id])
  end

  # POST /portfolio_allocations
  # POST /portfolio_allocations.json
  def create
    @portfolio_allocation = PortfolioAllocation.new(params[:portfolio_allocation])

    respond_to do |format|
      if @portfolio_allocation.save
        format.html { redirect_to @portfolio_allocation, notice: 'Portfolio allocation was successfully created.' }
        format.json { render json: @portfolio_allocation, status: :created, location: @portfolio_allocation }
      else
        format.html { render action: "new" }
        format.json { render json: @portfolio_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /portfolio_allocations/1
  # PUT /portfolio_allocations/1.json
  def update
    @portfolio_allocation = PortfolioAllocation.find(params[:id])

    respond_to do |format|
      if @portfolio_allocation.update_attributes(params[:portfolio_allocation])
        format.html { redirect_to @portfolio_allocation, notice: 'Portfolio allocation was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @portfolio_allocation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /portfolio_allocations/1
  # DELETE /portfolio_allocations/1.json
  def destroy
    @portfolio_allocation = PortfolioAllocation.find(params[:id])
    @portfolio_allocation.destroy

    respond_to do |format|
      format.html { redirect_to portfolio_allocations_url }
      format.json { head :ok }
    end
  end
end
