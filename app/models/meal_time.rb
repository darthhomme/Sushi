class MealTime < ActiveRecord::Base
  belongs_to :group
  belongs_to :order

end
