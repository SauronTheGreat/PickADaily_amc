class ModifyStock < ActiveRecord::Migration
  def up
    rename_column :stocks,:base_mu,:base_rate
   remove_column :stocks,:base_probability


  end

  def down
  end
end
