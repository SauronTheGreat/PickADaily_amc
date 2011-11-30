class Stock < ActiveRecord::Base
  has_many :stock_prices,:dependent => :destroy
end
