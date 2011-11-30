class CreatePortfolioAllocations < ActiveRecord::Migration
  def change
    create_table :portfolio_allocations do |t|
      t.integer :player_id
      t.integer :min_allocation
      t.integer :max_allocation
      t.integer :round_id
      t.integer :investment_type_id

      t.timestamps
    end
  end
end
