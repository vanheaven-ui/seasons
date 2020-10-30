class SessionsController < ApplicationController
<<<<<<< HEAD
def new; end
=======
  def new; end
>>>>>>> feature/mvp-v1

  def create
    @user = User.find_by(username: params[:username])
    if @user
<<<<<<< HEAD
      redirect_to root_path, notice: 'Login successful, enjoy!'
    else
      redirect_to login_path, alert: 'Ops, something went wrong, try again'
=======
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Login successful, enjoy!'
    else
      redirect_to login_path, alert: 'Ops, something is wrong, please check entry'
>>>>>>> feature/mvp-v1
    end
  end

  def destroy
    session.destroy
    redirect_to root_path, notice: 'Logged out'
  end
end
