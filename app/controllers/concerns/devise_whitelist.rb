## Find in ApplicationController

module DeviseWhitelist
  extend ActiveSupport::Concern

  ## Set up
  included do
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  ## Define Permitted Paramaters
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end