class ChangeColumnNametoEmployees < ActiveRecord::Migration
  def change
    rename_column :employees, :password_digest, :password
  end
end
