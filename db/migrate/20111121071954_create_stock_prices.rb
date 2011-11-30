class CreateStockPrices < ActiveRecord::Migration
  def change
    create_table :stock_prices do |t|
      t.integer :round_id
      t.integer :stock_id
      t.float :open
      t.float :high
      t.float :low
      t.float :close

      t.timestamps
    end
  end
end
