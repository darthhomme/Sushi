class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :party_id
      t.integer :item_id
      t.integer :quantity
      t.text :note

      t.timestamps null: false
    end
  end
end
