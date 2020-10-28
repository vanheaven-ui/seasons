class ApplicationController < ActionController::Base

  helper_method :current_user
  helper_method :user_signed_in?
  helper_method :require_login

  def current_user
    User.find_by(id: session[:user_id])
  end

  def user_signed_in?
    !current_user.nil?
  end

  def require_login
    if current_user.nil?
      redirect_to login_path, alert: 'Permission denied, you should login or signup'
    else
      current_user
    end
  end
end
