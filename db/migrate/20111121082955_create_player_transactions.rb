class CreatePlayerTransactions < ActiveRecord::Migration
  def change
    create_table :player_transactions do |t|
      t.integer :player_id
      t.integer :investment_type_id
      t.integer :investment_round_price_id
      t.float :amount_invested
      t.date :date_transacted
      t.date :expected_date_of_return

      t.timestamps
    end
  end
end
