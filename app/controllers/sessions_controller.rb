class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notise: 'thank*s for log in'
    else
    flash.now.alert =  'Email of password si invalid'
    render 'new'
  end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notise: 'logged out'
  end
end
