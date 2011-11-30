class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :student_group_user_id
      t.integer :simulation_id
      t.boolean :played

      t.timestamps
    end
  end
end
