class Committee < ActiveRecord::Base
  validates :name, :presence => true

  has_many :chairs
  has_many :attendees
  has_many :messages
end
