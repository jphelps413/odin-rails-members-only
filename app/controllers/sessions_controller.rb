#
# Based on the sessions controller built for the rails tutorial
#
class SessionsController < ApplicationController
  def new
    # binding.pry
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @uer && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_to @user
    else
      flash[:error] = 'Login failed!'
      redirect_to root_url
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
