class CreateClientPlayers < ActiveRecord::Migration
  def change
    create_table :client_players do |t|
      t.integer :client_id
      t.integer :round_id
      t.integer :player_id
      t.float :amount

      t.timestamps
    end
  end
end
