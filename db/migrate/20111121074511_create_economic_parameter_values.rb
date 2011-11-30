class CreateEconomicParameterValues < ActiveRecord::Migration
  def change
    create_table :economic_parameter_values do |t|
      t.integer :economic_parameter_id
      t.float :value
      t.integer :round_id

      t.timestamps
    end
  end
end
