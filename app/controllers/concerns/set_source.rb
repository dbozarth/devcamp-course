# File name must be snake case and the module 
# name must be camel case

module SetSource
  extend ActiveSupport::Concern

  included do
    before_action :set_source
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end
  
end