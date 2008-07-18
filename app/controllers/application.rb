# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => 'fb09e0db7365b9a046da8deaa8772425'
  
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  before_filter :authenticate
  before_filter :set_current_user
  helper_method :current_user
  
  
  protected
  
  def set_current_user 
    User.current_user_id = session[:user] 
  end
  
  def current_user
    @current_user ||= User.find(session[:user]) if session[:user]
  end

  def authenticate
    unless session[:user]
      session[:return_to] = request.request_uri
      redirect_to login_path
    end
  end
  
end
