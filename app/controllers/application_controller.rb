class ApplicationController < ActionController::Base
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
end
