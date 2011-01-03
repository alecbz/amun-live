class School < ActiveRecord::Base
  has_many :attendees
end
