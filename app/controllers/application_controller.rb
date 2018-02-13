class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def home
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # def is_authenticated?
  #   if !current_user
  #     flash[:message] = "You need to log in, first"
  #     redirect_to login_path
  #   end
  # end

  def logged_in?
    !!current_user
  end

end
