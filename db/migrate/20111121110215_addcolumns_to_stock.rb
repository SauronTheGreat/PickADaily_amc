class AddcolumnsToStock < ActiveRecord::Migration
  def up
    add_column :stocks, :base_price, :integer
    add_column :stocks, :base_mu, :float
    add_column :stocks, :base_sigma, :float
    add_column :stocks, :base_probability, :float


  end

  def down
  end
end
