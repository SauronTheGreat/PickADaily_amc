class CreateStudentGroupUsers < ActiveRecord::Migration
  def change
    create_table :student_group_users do |t|
      t.integer :student_group_id
      t.integer :user_id

      t.timestamps
    end
  end
end
