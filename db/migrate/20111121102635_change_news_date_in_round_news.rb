class ChangeNewsDateInRoundNews < ActiveRecord::Migration
  def up
    add_column :round_news,:month_number,:integer
  end

  def down
  end
end
