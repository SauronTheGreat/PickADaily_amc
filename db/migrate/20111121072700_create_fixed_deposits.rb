class CreateFixedDeposits < ActiveRecord::Migration
  def change
    create_table :fixed_deposits do |t|
      t.integer :company_id
      t.float :rate_of_interest
      t.integer :tenure

      t.timestamps
    end
  end
end
