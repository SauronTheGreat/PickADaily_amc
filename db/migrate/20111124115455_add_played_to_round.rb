class AddPlayedToRound < ActiveRecord::Migration
  def change
    add_column :rounds, :played, :boolean
  end
end
