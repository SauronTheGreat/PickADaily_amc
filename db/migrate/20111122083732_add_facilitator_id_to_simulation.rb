class AddFacilitatorIdToSimulation < ActiveRecord::Migration
  def change
    add_column :simulations, :facilitator_id, :integer
  end
end
