class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login

  helper_method :logged_in?, :current_user, :current_user_session

  Time.zone = "Central Time (US & Canada)" #Weridly required.

  private

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this area."
      redirect_to "/"
    end
  end

  def logged_in?
    defined?(current_user_session) && defined?(current_user_session.user)
  end

  def current_user_session
    return @current_user_session if defined?(@current_user_session)
    @current_user_session = UserSession.find
  end

end
