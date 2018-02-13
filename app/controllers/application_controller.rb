class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def is_authenticated?
    if !current_user
      flash[:message] = "You need to log in, first"
      redirect_to login_path
  end
end

  def logged_in?
    !!current_user
  end

  #syntax --> before_action :is_logged_in?, only: [:new, :create]


end
