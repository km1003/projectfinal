class SessionsController < ApplicationController
  def new
    @title = "Log in"
  end
 def create
    user = User.find_by_email(params[:session][:email])
    if user.nil?
      flash.now[:error] = "Invalid email"
      @title = "Sign in"
      render 'submit'
    else
      sign_in user
      redirect_to user
    end
  end

  def destroy
     sign_out
     redirect_to root_path
  end
end
