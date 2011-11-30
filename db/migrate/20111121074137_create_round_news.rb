class CreateRoundNews < ActiveRecord::Migration
  def change
    create_table :round_news do |t|
      t.integer :round_id
      t.integer :news_id
      t.date :news_date

      t.timestamps
    end
  end
end
