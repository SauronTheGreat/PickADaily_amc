class Simulation < ActiveRecord::Base
  has_many :rounds

  after_create :create_rounds

  def create_rounds
    Round.create_rounds_from_simulation(self.id)


  end

  def self.populate_news(simulation_id)
    @simulation=Simulation.find(simulation_id)
    total_news_available=News.all.count
    @rounds=@simulation.rounds
    @all_news=News.all

    @used_news=Array.new
    @rounds.each do |round|
      #  if total_news_available>1
      news_in_this_round=1+rand(total_news_available).to_i
      total_news_available=total_news_available-news_in_this_round

      news_in_this_round.times do |i|
        @all_news.shuffle!
        @rounds_news=RoundNews.new
        @rounds_news.round_id=round.id
        @rounds_news.news_id=@all_news[0].id
        @rounds_news.month_number=rand(6)+1
        @rounds_news.save!

        @constants=Constant.all
        if @all_news[0].impact_on_economic_growth!=4
          @companies=Company.all
          @impact=ImpactValue.find(@all_news[0].impact_on_economic_growth).value_amount
        elsif @all_news[0].impact_on_equity!=4
          @companies=Company.all
          @impact=ImpactValue.find(@all_news[0].impact_on_equity).value_amount
        elsif @all_news[0].impact_on_sector!=4
          @impact=ImpactValue.find(@all_news[0].impact_on_sector).value_amount
          @sectors=NewsSector.find_all_by_news_id(@all_news[0].id)
          @companies=Array.new
          @sectors.each do |sector|
            @companies << sector.companies
          end
        elsif @all_news[0].impact_on_company!=4
          @impact=ImpactValue.find(@all_news[0].impact_on_company).value_amount
          @companies=NewsCompany.find_all_by_news_id(@all_news[0].id)
        end
        @stocks=Array.new

        @companies.each do |company|
          @stocks << Stock.find_by_company_id(company.id).id
        end
        @constants.each do |constant|
          @stocks.each do |stock_id|
            @stock=Stock.find(stock_id)
            @last=RoundStockConstant.find_last_by_constant_id_and_stock_id_and_round_id_and_month_id(constant.id, stock_id, round.id, @rounds_news.month_number)
            @base=[@stock.base_price, @stock.base_sigma, @stock.base_rate]
            if @last.nil?
              @last=RoundStockConstant.new
              @last.amount=@base[constant.id-1]

            end

            #if @last.nil?                           #change base_mu to rate
            #  @price=@stock.base_price              #add value to each impact
            #  @mu=@stock.base_mu                    #add -ve impact
            #  @de=@stock.base_sigma
            #  @pr=@stock.base_probability
            #else
            #  @price=@last.base_price
            #  @mu=@last.base_mu
            #  @de=@last.base_sigma
            #  @pr=@last.base_probability
            #end
            @round_stock_constant_0=RoundStockConstant.find_last_by_constant_id_and_stock_id_and_round_id_and_month_id(constant.id, stock_id, round.id, @rounds_news.month_number-1)
            if @round_stock_constant_0.nil?
              @round_stock_constant_0=RoundStockConstant.new
            end

            @round_stock_constant_0.round_id=round.id
            @round_stock_constant_0.month_id=@rounds_news.month_number-1
            @round_stock_constant_0.constant_id=constant.id
            @round_stock_constant_0.stock_id=stock_id
            @round_stock_constant_0.amount=@last.amount*@impact*0.5
            @round_stock_constant_0.save

            @round_stock_constant_1=RoundStockConstant.find_last_by_constant_id_and_stock_id_and_round_id_and_month_id(constant.id, stock_id, round.id, @rounds_news.month_number)
            if @round_stock_constant_1.nil?
              @round_stock_constant_1=RoundStockConstant.new
            end
            @round_stock_constant_1.round_id=round.id
            @round_stock_constant_1.month_id=@rounds_news.month_number-1
            @round_stock_constant_1.constant_id=constant.id
            @round_stock_constant_1.stock_id=stock_id
            @round_stock_constant_1.amount=@last.amount*@impact
            @round_stock_constant_1.save

            @round_stock_constant_2=RoundStockConstant.find_last_by_constant_id_and_stock_id_and_round_id_and_month_id(constant.id, stock_id, round.id, @rounds_news.month_number+1)
            if @round_stock_constant_2.nil?
              @round_stock_constant_2=RoundStockConstant.new
            end

            @round_stock_constant_2.round_id=round.id
            @round_stock_constant_2.month_id=@rounds_news.month_number-1
            @round_stock_constant_2.constant_id=constant.id
            @round_stock_constant_2.stock_id=stock_id
            @round_stock_constant_2.amount=@last.amount*@impact*0.75
            @round_stock_constant_2.save

            @round_stock_constant_3=RoundStockConstant.find_last_by_constant_id_and_stock_id_and_round_id_and_month_id(constant.id, stock_id, round.id, @rounds_news.month_number+2)
            if @round_stock_constant_3.nil?
              @round_stock_constant_3=RoundStockConstant.new
            end

            @round_stock_constant_3.round_id=round.id
            @round_stock_constant_3.month_id=@rounds_news.month_number-1
            @round_stock_constant_3.constant_id=constant.id
            @round_stock_constant_3.stock_id=stock_id
            @round_stock_constant_3.amount=@last.amount*@impact*0.5
            @round_stock_constant_3.save



          end
        end
      end
       @all_news.delete(@all_news[0])
    end

  end

  #else
  #  @rounds_news=RoundNews.new
  #  @rounds_news.round_id=round.id
  #  @rounds_news.news_id=@all_news[0].id
  #  @rounds_news.month_number=rand(7)
  #  @rounds_news.save!
  #  @all_news.delete(@all_news[0])
  #
  #end


  def self.price_generator(simulation_id)
    StockPrice.delete_all
    @stocks=Stock.all
    @simulation=Simulation.find(simulation_id)
    @rounds=@simulation.rounds
    @rounds.each do |round|
      @stocks.each do |stock|
        @base_price=stock.base_price
        @base_sigma=stock.base_sigma
        @base_rate=stock.base_rate
        @close=@base_price

        6.times do |month|
          #@last_month_record=StockPrice.find_last_by_round_id_and_month_number_and_stock_id(round.id, month, stock.id)
          @constants=RoundStockConstant.find_all_by_round_id_and_stock_id_and_month_id(round.id, stock.id, month+1)
          #@open=@last_month_record.nil? ? @base_price :@last_month_record.close
          @high=0
          @low=99999
          @open=@close
          #@ltp=@open
          @mu=@close#@constants[0].amount.nil? ? @close : @constants[0].amount
          @sigma=@constants[1].amount.nil? ? @base_sigma : @constants[1].amount
          @rate=@constants[2].amount.nil? ? @base_rate : @constants[2].amount
          @delta_t=1.to_f/180
          @u=Math.exp(@sigma*(Math.sqrt(@delta_t)))
          @d=1/@u.to_f
          @a=Math.exp(@rate*@delta_t)

          30.times do
            @probability=100*((@a-@d)/(@u-@d))
            if (rand(100)<@probability)
              @mu*=@u
            else
              @mu*=@d
            end
            if @mu>@high
              @high=@mu
            end
            if @mu<@low
              @low=@mu
            end
            @close=@mu
          end
          @stock_price=StockPrice.new
          @stock_price.round_id=round.id
          @stock_price.month_number=month+1
          @stock_price.stock_id=stock.id
          @stock_price.open=@open
          @stock_price.high=@high
          @stock_price.low=@low
          @stock_price.close=@close
          @stock_price.save!
        end
      end
    end
  end


  def self.assign_constants_to_stock(simulation_id)
    @simulation=Simulation.find(simulation_id)
    @rounds=@simulation.rounds
    @rounds.each do |round|
      @stocks=Stock.all
      6.times do |month|
        @stocks.each do |stock|
          @round_stock_constant=RoundStockConstant.new
          @round_stock_constant.constant_id=Constant.find_by_name('Price').id
          @round_stock_constant.stock_id=stock.id
          @round_stock_constant.month_id=month+1
          @round_stock_constant.round_id=round.id
          @round_stock_constant.amount=stock.base_price
          @round_stock_constant.save

          @round_stock_constant=RoundStockConstant.new
          @round_stock_constant.constant_id=Constant.find_by_name('Sigma').id
          @round_stock_constant.stock_id=stock.id
          @round_stock_constant.month_id=month+1
          @round_stock_constant.round_id=round.id
          @round_stock_constant.amount=stock.base_sigma
          @round_stock_constant.save

          @round_stock_constant=RoundStockConstant.new
          @round_stock_constant.constant_id=Constant.find_by_name('Rate').id
          @round_stock_constant.stock_id=stock.id
          @round_stock_constant.month_id=month+1
          @round_stock_constant.round_id=round.id
          @round_stock_constant.amount=stock.base_rate
          @round_stock_constant.save
        end
      end
    end
  end


end


