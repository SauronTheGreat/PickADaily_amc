class Changecolumnsinplayerpromise < ActiveRecord::Migration
  def up
    remove_column :player_promises,:portfolio_wealth_approach_id
    add_column :player_promises,:portfolio_management,:boolean
  end

  def down

    remove_column :player_promises,:portfolio_management
       add_column :player_promises,:portfolio_wealth_approach_id,:integer

  end
end
