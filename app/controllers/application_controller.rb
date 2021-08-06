class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def navigation
    @admin = current_user.admin
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :investment])
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :investment])
  end
end
