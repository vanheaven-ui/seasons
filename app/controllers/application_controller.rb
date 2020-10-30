class ApplicationController < ActionController::Base
<<<<<<< HEAD

  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :authenticate_user!
=======
  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :require_login
>>>>>>> feature/mvp-v1

  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_signed_in?
<<<<<<< HEAD
    return true unless current_user.nil?

    false
  end

  def authenticate_user!
    user_signed_in?
=======
    !current_user.nil?
  end

  def require_login
    if current_user.nil?
      redirect_to login_path, alert: 'Permission denied, you should login or signup'
    else
      current_user
    end
>>>>>>> feature/mvp-v1
  end
end
