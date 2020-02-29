class SessionsController < ApplicationController
  def create
    session[:user] = 'Dylan'
    redirect_to '/homes'
  end

  def new
  end

  def destroy
    session.delete(:user)
    redirect_to new_session_path
  end
end
