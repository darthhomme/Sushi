class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
