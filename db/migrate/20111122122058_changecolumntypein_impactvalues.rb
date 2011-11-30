class ChangecolumntypeinImpactvalues < ActiveRecord::Migration
  def up
    remove_column :impact_values,:value_amount
    add_column :impact_values,:value_amount,:float
  end

  def down
  end
end
