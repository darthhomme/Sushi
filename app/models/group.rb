class Group < ActiveRecord::Base
  has_many :meal_times
  has_many :orders, through: :meal_times
end
