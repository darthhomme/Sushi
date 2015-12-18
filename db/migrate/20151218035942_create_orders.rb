class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.text :description
      t.decimal :price
      t.decimal :tax
      t.decimal :total

      t.timestamps null: false
    end
  end
end
