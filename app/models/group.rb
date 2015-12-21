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
  attr_accessor :balance
  def checkout
    self.balance = 0
    self.orders.each do |order|
      self.balance += order.price
    end
    self.balance
  end

  def taxer
    tax = self.checkout * 0.08875
    tax.round(2)
  end

  def totaller
    total = self.checkout + self.taxer
    total.round(2)
  end

  def tipper(percent)
    (self.checkout * (percent*0.01))
  end
end
