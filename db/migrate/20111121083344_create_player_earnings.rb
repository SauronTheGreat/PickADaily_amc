class CreatePlayerEarnings < ActiveRecord::Migration
  def change
    create_table :player_earnings do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :commissions
      t.integer :fine
      t.integer :income

      t.timestamps
    end
  end
end
