class CreatePlayerPromises < ActiveRecord::Migration
  def change
    create_table :player_promises do |t|
      t.integer :player_id
      t.float :expected_return
      t.integer :max_risk
      t.integer :round_id
      t.integer :portfolio_wealth_approach_id

      t.timestamps
    end
  end
end
