class CreateEconomicParameters < ActiveRecord::Migration
  def change
    create_table :economic_parameters do |t|
      t.string :name

      t.timestamps
    end
  end
end
