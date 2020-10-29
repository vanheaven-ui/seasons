class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Login successful, enjoy!'
    else
      redirect_to login_path, alert: 'Ops, something is wrong, please check entry'
    end
  end

  def destroy
    session.destroy
    redirect_to root_path, notice: 'Logged out'
  end
end
