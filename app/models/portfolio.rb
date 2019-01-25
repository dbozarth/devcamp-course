class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                reject_if: lambda { |attrs| attrs['name'].blank? }

  includes Placeholder

  validates_presence_of :title, :body, :main_image, :thumb_image

  # Class based scope
  def self.angular
    where(subtitle: 'Angular')
  end

  def self.by_position
    order("position ASC")
  end

  scope :ror_items, -> { where(subtitle: 'Ruby On Rails') }

  # Setting defaults allows for non-required data to be set to default values
  # when the action is called in the controller. ||= means if nil use default.
  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  end

end
