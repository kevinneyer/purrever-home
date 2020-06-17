class ApplicationController < ActionController::Base

  def welcome
  end

  def find_user
   current_user =  User.find_by(id: session[:username_id])
  end

end
