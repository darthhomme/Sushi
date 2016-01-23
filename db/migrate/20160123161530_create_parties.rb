class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :guest_total
      t.integer :top_number
      t.boolean :is_paid
      t.string :name
      t.boolean :euro

      t.timestamps null: false
    end
  end
end
