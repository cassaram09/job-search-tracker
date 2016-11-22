class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar, :name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  end
end
