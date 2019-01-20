class ApplicationController < ActionController::Base
  layout 'application'
  protect_from_forgery with: :exception

  # Controller Concerns
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
  
end

