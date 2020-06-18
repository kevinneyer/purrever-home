class SessionsController < ApplicationController

  def new
  end


  def create 
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id

      redirect_to listings_path
    else
      flash[:error] = "Username or Password is Incorrect"
      redirect_to new_login_path
    end  

  end 

  def logout
    # session[:id] = nil 
    session.delete(:user_id)
    redirect_to home_path
  end 


end