class SessionsController < ApplicationController
  def new
    @title = "Log in"
  end
 def create
    user = User.find_by_email(params[:session][:email])
    if user.nil?
      flash.now[:error] = "Invalid email"
      @title = "Sign in"
      render 'new'
    else
      #sign_in user
      cookies.permanent[:remember_token] = user.email
      current_user = user
      redirect_to user
    end
  end

  def destroy
     #sign_out
     cookies.delete(:remember_token)
     current_user= nil
     redirect_to root_path
  end
  
  def logout
     cookies.delete(:remember_token)
     current_user= nil
     redirect_to root_path
  end
end
