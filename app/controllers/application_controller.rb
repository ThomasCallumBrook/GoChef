class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :location_lat, :location_lon, :email, :password, :password_confirmation, :current_password] )
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :location_lat, :location_lon, :email, :password, :password_confirmation, :current_password, :max_party_size, :price_per_head] )
  end

end
