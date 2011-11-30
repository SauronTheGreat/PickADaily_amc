class AddMonthNumberToStockPrices < ActiveRecord::Migration
  def change
    add_column :stock_prices,:month_number,:integer
  end
end
