class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_user
  before_action :configure_permitted_parameters, if: :devise_controller?
  after_action :set_csrf_cookie_for_ng

  respond_to :html, :json 

  def set_csrf_cookie_for_ng #for use with Angular
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  protected

  def verified_request? #for use with Angular
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end

  private

  def set_user
    @user = current_user
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :avatar])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name])
  end

  def user_not_authorized #for use with Pundit
    flash[:alert] = "You are not authorized to perform that action."
    redirect_to(request.referrer || root_path)
  end

  def after_sign_in_path_for(resource) #for user with omniAuth
    request.env['omniauth.origin'] || root_path
  end
end
