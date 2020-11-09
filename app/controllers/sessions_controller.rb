class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(username: params[:username])
    if @user
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Login successful, enjoy!'
    elsif params[:username].empty?
      redirect_to login_path, alert: 'Username cannot be blank'
    elsif params[:username].size < 3
      redirect_to login_path, alert: 'Username is too short(minimum length is 3)'
    else
      redirect_to login_path, alert: 'Ops, something is wrong, please check entry'
    end
  end

  def destroy
    if session.destroy
      redirect_to root_path, notice: 'Logged out'
    else
      redirect_to root_path, alert: 'Oh! cannot logout at this time'
    end
  end
end
