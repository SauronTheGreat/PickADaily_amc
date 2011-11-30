class CreateDebtPaperPrices < ActiveRecord::Migration
  def change
    create_table :debt_paper_prices do |t|
      t.integer :round_id
      t.integer :debt_paper_id
      t.date :debt_paper_date
      t.float :open
      t.float :high
      t.float :low
      t.float :close

      t.timestamps
    end
  end
end
