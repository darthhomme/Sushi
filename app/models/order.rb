class Order < ActiveRecord::Base
  has_many :meal_times
  has_many :groups, through: :meal_times

end
