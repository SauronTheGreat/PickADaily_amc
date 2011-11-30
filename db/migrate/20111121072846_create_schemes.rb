class CreateSchemes < ActiveRecord::Migration
  def change
    create_table :schemes do |t|
      t.string :name
      t.integer :entry_load
      t.integer :exit_load
      t.float :commission_paid

      t.timestamps
    end
  end
end
