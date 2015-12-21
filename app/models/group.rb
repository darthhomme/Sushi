class Group < ActiveRecord::Base
  has_many :meal_times
  has_many :orders, through: :meal_times

  def favorite_meal
    meal = self.meals
    meal_counts = meals.uniq.map do |meal|
      {
        meal: meal,
        meal: meals.to_a.count(meal)
      }
    end
    largest_count = meal_counts.max_by {|c| c[:meal]}
    largest_count[:meal]

  end
end
