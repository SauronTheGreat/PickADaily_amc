class CreateDebtPapers < ActiveRecord::Migration
  def change
    create_table :debt_papers do |t|
      t.integer :company_id
      t.string :name
      t.float :amount
      t.integer :tenure
      t.float :rate_of_interest
      t.integer :lot_size

      t.timestamps
    end
  end
end
