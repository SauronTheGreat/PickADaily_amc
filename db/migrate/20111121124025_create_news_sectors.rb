class CreateNewsSectors < ActiveRecord::Migration
  def change
    create_table :news_sectors do |t|
      t.integer :sector_id
      t.integer :news_id

      t.timestamps
    end
  end
end
