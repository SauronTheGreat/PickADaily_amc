class CreateSimulations < ActiveRecord::Migration
  def change
    create_table :simulations do |t|
      t.string :name
      t.integer :student_group_id

      t.timestamps
    end
  end
end
