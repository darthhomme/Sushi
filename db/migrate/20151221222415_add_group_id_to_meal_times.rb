class AddGroupIdToMealTimes < ActiveRecord::Migration
  def change
    add_column :meal_times, :group_id, :integer
  end
end
