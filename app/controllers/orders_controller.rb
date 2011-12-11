class OrdersController < ApplicationController
  before_filter :authenticate, :only => [:edit, :update]
  before_filter :correct_user, :only => [:edit, :update]
  
  def new   # responds to get /users/new by rendering new.html.erb
    @title = "Customize"
    @order = Order.new
  end
  
  def create  # responds to post /users and redirects to /user/i if successful or new.html.erb if not
    @order = Order.new(params[:order])
    @order.user_id = $current_user.id
    @order.save
    redirect_to order_path(@order)
  end
  
  def show  # responds to get /orders/i by rendering show.html.erb
    @orders = $current_user.orders.paginate(:page => params[:page] )
  end
  
  def index  # responds to get /orders by rendering index.html.erb
    @title = "Orders"
    if $current_user.nil?
      @orders = nil
    else
      @orders = $current_user.orders.paginate(:page => params[:page] )
    end
  end
  
  def destroy
    
  end
end
