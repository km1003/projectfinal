class PagesController < ApplicationController
  def home
    @title = "Home"
  end
  def login
    @title = "Login"
  end
  def orders
    @title = "Orders"
    if $current_user.nil?
      @orders = nil
    else
      @orders = $current_user.orders.paginate(:page => params[:page] )
    end
  end
  def customize
    @title = "Customize"
  end
end
