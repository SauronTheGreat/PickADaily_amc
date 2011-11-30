class CreateClientEarnings < ActiveRecord::Migration
  def change
    create_table :client_earnings do |t|
      t.integer :round_id
      t.integer :player_id
      t.integer :client_id
      t.integer :earning
      t.integer :fee_payout

      t.timestamps
    end
  end
end
