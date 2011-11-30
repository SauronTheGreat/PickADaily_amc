class CreateRoundStockConstants < ActiveRecord::Migration
  def change
    create_table :round_stock_constants do |t|
      t.integer :constant_id
      t.integer :round_id
      t.integer :month_id
      t.float :amount

      t.timestamps
    end
  end
end
