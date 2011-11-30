class AddDiversificationValueToClient < ActiveRecord::Migration
  def change
    add_column :clients, :diversification_intent_value, :integer
  end
end
