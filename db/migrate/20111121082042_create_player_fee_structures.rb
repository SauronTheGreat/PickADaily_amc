class CreatePlayerFeeStructures < ActiveRecord::Migration
  def change
    create_table :player_fee_structures do |t|
      t.integer :round_id
      t.integer :player_id
      t.float :management_fee
      t.float :carry_fee

      t.timestamps
    end
  end
end
