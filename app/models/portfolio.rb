class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Class based scope
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ror_items, -> { where(subtitle: 'Ruby On Rails') }

  # Setting defaults allows for non-required data to be set to default values
  # when the action is called in the controller. ||= means if nil use default.
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= "http://placehold.it/600x400"
    self.thumb_image ||= "http://placehold.it/350x200"
  end

end
