class CreateMealTimes < ActiveRecord::Migration
  def change
    create_table :meal_times do |t|
      t.text :meals
      t.integer :number_of_guests
      t.integer :group_id
      t.integer :order_id
      t.timestamps null: false
    end
  end
end
