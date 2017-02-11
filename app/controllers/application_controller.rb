class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters
  before_action :authenticate_user!
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?



  protect_from_forgery with: :exception
  layout "application"
  layout :layout_by_resource
  def layout_by_resource
    if devise_controller? && resource_name == :user && action_name == 'new'
      "login-screen"
    else
      "application"
    end
  end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :email, :password, :newsletter_pref])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :password, :current_password, :newsletter_pref])
  end
end
