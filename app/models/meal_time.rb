class MealTime < ActiveRecord::Base
  belongs_to :group
  belongs_to :order

  attr_accessor :balance
  def checkout
    self.balance = 0
    self.orders.each do |order|
      self.balance += order.food.price
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
