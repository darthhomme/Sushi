class AddOrderIdToMealTimes < ActiveRecord::Migration
  def change
    add_column :meal_times, :order_id, :integer
  end
end
