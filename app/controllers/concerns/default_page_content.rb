## Used to set page defaults in views

module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_title, :set_seo
  end

  def set_title
    @page_title = "DevCamp - Portfolio App"
  end

  def set_seo
    @seo_keywords = "Don, Bozarth, portfolio, rails, ruby"
  end
  
end