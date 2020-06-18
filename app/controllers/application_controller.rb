class ApplicationController < ActionController::Base

  before_action :logged_in?
  
  def welcome
  end

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end

end
