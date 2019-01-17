class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  # Class based scope
  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ror_items, -> { where(subtitle: 'Ruby On Rails') }
end
