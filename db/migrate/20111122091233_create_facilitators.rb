class CreateFacilitators < ActiveRecord::Migration
  def change
    create_table :facilitators do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
