class CreatePlayerAssessments < ActiveRecord::Migration
  def change
    create_table :player_assessments do |t|
      t.integer :player_id
      t.float :return_risk_ratio
      t.float :promised_vs_actual_return
      t.float :return
      t.float :deviation_from_philosophy
      t.float :fees_vs_return
      t.integer :round_id

      t.timestamps
    end
  end
end
