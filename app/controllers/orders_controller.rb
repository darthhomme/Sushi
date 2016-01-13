class OrdersController < ApplicationController

def index
  @orders = Order.all
  @order = Order.new
  @groups = Group.all
end
def new
  @order = Order.new
end
#           POST   /candies(.:format)          candies#create
def create
  Order.create(order_params)
  redirect_to orders_path
end
def show
  @order = Order.find(params[:id])
  redirect_to orders_path
end
#         DELETE /candies/:id(.:format)      candies#destroy
def destroy
  Order.delete(params[:id])
  redirect_to orders_path
end

private

def order_params
  params.require(:order).permit(:order_id, :name, :description, :price)
end
end
