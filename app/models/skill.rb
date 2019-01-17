class Skill < ApplicationRecord
  includes Placeholder

  validates_presence_of :title, :percent_utilized

  # Setting defaults allows for non-required data to be set to default values
  # when the action is called in the controller. ||= means if nil use default.
  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: 200, width: 200)
  end

end
