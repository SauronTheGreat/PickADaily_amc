class AddStockIdToRoundStockConstant < ActiveRecord::Migration
  def change
    add_column :round_stock_constants, :stock_id, :integer
  end
end
