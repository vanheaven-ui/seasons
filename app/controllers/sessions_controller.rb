class SessionsController < ApplicationController
def new; end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      redirect_to root_path, notice: 'Login successful, enjoy!'
    else
      redirect_to login_path, alert: 'Ops, something went wrong, try again'
    end
  end

  def destroy
    session.destroy
    redirect_to root_path, notice: 'Logged out'
  end
end
