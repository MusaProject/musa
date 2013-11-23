class Admin::AdminController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :authenticate_admin!

  layout 'admin'

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

end
