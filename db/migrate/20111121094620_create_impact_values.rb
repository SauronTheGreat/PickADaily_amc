class CreateImpactValues < ActiveRecord::Migration
  def change
    create_table :impact_values do |t|
      t.string :name

      t.timestamps
    end
  end
end
