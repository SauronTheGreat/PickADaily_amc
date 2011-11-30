class AddValueToImpactValue < ActiveRecord::Migration
  def change
    add_column :impact_values, :value_amount, :integer
  end
end
