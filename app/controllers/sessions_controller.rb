#
# Based on the sessions controller built for the rails tutorial
#
class SessionsController < ApplicationController
  def new
    # binding.pry
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    # binding.pry
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      remember @user # updates sessions cookies
      redirect_to root_url
    else
      flash[:danger] = 'Invalid email/password combo, login failed!'
      redirect_to login_url
    end
  end

  def destroy
    # binding.pry
    log_out if logged_in?
    redirect_to root_url
  end
end
