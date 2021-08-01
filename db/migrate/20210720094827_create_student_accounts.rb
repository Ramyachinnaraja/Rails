class CreateStudentAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :student_accounts do |t|
      t.string :name 
      t.integer :age
      t.timestamps
    end
  end
end
