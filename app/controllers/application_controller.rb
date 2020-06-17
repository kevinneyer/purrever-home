class ApplicationController < ActionController::Base

  def welcome
  end

  def current_user
    session[:username]
  end

end
