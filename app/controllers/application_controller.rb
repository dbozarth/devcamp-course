class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Controller Concerns
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
end
