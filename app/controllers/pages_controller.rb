class PagesController < ApplicationController
  def home
    @title = "Home"
  end
  def login
    @title = "Login"
  end
  def orders
    @title = "Orders"
    #@order = Order.new
    #@user = User.find(params[:id])
    #$user_email = none
    @user = User.find_by_email($user_email)
    if @user.nil?
      @orders = nil
    else
      @orders = @user.orders.paginate(:page => params[:page] )
    end
    #@orders = @user.orders.paginate(:page => params[:page] )
    #@users = User.paginate(:page =>params[:page])
  end
  def customize
    @title = "Customize"
  end
end
