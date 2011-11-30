class CreateFacilitatorGroups < ActiveRecord::Migration
  def change
    create_table :facilitator_groups do |t|
      t.string :name
      t.integer :facilitator_id

      t.timestamps
    end
  end
end
