class CreateGoldPrices < ActiveRecord::Migration
  def change
    create_table :gold_prices do |t|
      t.date :price_date
      t.float :price
      t.integer :round_id

      t.timestamps
    end
  end
end
