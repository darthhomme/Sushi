class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :party, index: true, foreign_key: true
      t.integer :item, index: true, foreign_key: true
      t.integer :quantity
      t.text :note

      t.timestamps null: false
    end
  end
end
