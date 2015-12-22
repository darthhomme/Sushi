class MealTime < ActiveRecord::Base
  belongs_to :group
  belongs_to :order
  def paying
    @group = Group.find(params[:group_id])
    @order = @group.orders
    @check = 0

    @group.orders.each do |taco|
      @check += (taco.order_price + order.mod.mod_price )
    end
    @tip15 = 0
    @group.orders.each do |shells|
      @tip15 = (@check * 1.15)
    end
  end
end
