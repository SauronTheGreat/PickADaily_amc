class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :description
      t.integer :impact_on_economic_growth
      t.integer :impact_on_equity
      t.integer :impact_on_sector
      t.integer :impact_on_company
      t.integer :impact_on_gold
      t.integer :impact_on_debt

      t.timestamps
    end
  end
end
