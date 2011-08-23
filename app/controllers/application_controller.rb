class ApplicationController < ActionController::Base
  include ControllerAuthentication
  protect_from_forgery
  
  def can_manage?
    current_user and current_user.admin?
  end
  
  helper_method :can_manage?
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied."
    redirect_to root_url
  end
  
end
