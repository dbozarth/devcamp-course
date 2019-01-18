class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Controller Concerns
  include DeviseWhitelist

end
