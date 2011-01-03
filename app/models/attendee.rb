class Attendee < ActiveRecord::Base
  belongs_to :committee
  belongs_to :school
end
