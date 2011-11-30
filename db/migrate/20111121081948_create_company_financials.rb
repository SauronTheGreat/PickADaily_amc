class CreateCompanyFinancials < ActiveRecord::Migration
  def change
    create_table :company_financials do |t|
      t.integer :company_id
      t.integer :financial_year
      t.integer :book_value
      t.integer :ev_ebitda
      t.integer :gearing
      t.integer :turnover
      t.integer :profit
      t.integer :total_debt
      t.integer :debt_rating
      t.integer :promoter_rating

      t.timestamps
    end
  end
end
