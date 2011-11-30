class CreateActiveRounds < ActiveRecord::Migration
  def change
    create_table :active_rounds do |t|
      t.integer :round_id
      t.integer :simulation_id

      t.timestamps
    end
  end
end
