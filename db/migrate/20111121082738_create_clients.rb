class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :return_focus
      t.integer :risk_focus
      t.integer :tolerance
      t.boolean :outlook
      t.boolean :diversification_intent
      t.float :proportion_invested
      t.float :wealth_growth_rate
      t.float :fee_sensitivity
      t.integer :profit_sharing_sensitivity

      t.timestamps
    end
  end
end
