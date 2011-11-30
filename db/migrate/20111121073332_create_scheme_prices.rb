class CreateSchemePrices < ActiveRecord::Migration
  def change
    create_table :scheme_prices do |t|
      t.integer :round_id
      t.integer :scheme_id
      t.date :price_date
      t.float :price

      t.timestamps
    end
  end
end
