class AddBasePriceToCompany < ActiveRecord::Migration
  def change
    add_column :companies, :base_price, :float
  end
end
