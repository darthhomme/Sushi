class OrdersController < ApplicationController
#  root GET    /                           servers#index
#servers GET    /servers(.:format)          servers#index
#      POST   /servers(.:format)          servers#create
#new_server GET    /servers/new(.:format)      servers#new
#edit_server GET    /servers/:id/edit(.:format) servers#edit
#server GET    /servers/:id(.:format)      servers#show
#      PATCH  /servers/:id(.:format)      servers#update
#      PUT    /servers/:id(.:format)      servers#update
#      DELETE /servers/:id(.:format)      servers#destroy
#orders GET    /orders(.:format)           orders#index
#      POST   /orders(.:format)           orders#create
#new_order GET    /orders/new(.:format)       orders#new
#edit_order GET    /orders/:id/edit(.:format)  orders#edit
#order GET    /orders/:id(.:format)       orders#show
#      PATCH  /orders/:id(.:format)       orders#update
#      PUT    /orders/:id(.:format)       orders#update
#      DELETE /orders/:id(.:format)       orders#destroy

#   candies GET    /candies(.:format)          candies#index
def index
  @orders = Order.all
  @order = Order.new
end
def new
  @order = Order.new
end
#           POST   /candies(.:format)          candies#create
def create
  Order.create(order_params)
  redirect_to orders_path
end

def select
  @group = Group.find(params[:id])
  @group.orders.create(orders_params)
  
  redirect_to orders_path
end

def show
  @order = Order.find(params[:id])
  redirect_to orders_path
end
#           DELETE /candies/:id(.:format)      candies#destroy
def destroy
  Order.delete(params[:id])
  redirect_to orders_path
end

private

def order_params
  params.require(:order).permit(:order_id, :description, :price, :tax, :total)
end
end
