class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.string :name

      t.timestamps
    end
  end
end
