class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :job_title
      t.boolean :is_admin

      t.timestamps null: false
    end
  end
end
