class CreateNewsCompanies < ActiveRecord::Migration
  def change
    create_table :news_companies do |t|
      t.integer :news_id
      t.integer :company_id

      t.timestamps
    end
  end
end
