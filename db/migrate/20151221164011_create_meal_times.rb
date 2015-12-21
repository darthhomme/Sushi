class CreateMealTimes < ActiveRecord::Migration
  def change
    create_table :meal_times do |t|
      t.text :meals
      t.integer :number_of_guests

      t.timestamps null: false
    end
  end
end
