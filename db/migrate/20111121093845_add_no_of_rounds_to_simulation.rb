class AddNoOfRoundsToSimulation < ActiveRecord::Migration
  def change
    add_column :simulations, :no_of_rounds, :integer
  end
end
