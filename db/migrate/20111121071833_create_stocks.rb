class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.integer :lot_size
      t.integer :company_id

      t.timestamps
    end
  end
end
