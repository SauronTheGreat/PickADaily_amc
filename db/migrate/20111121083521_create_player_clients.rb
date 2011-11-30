class CreatePlayerClients < ActiveRecord::Migration
  def change
    create_table :player_clients do |t|
      t.integer :player_id
      t.integer :client_id

      t.timestamps
    end
  end
end
