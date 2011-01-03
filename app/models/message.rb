class Message < ActiveRecord::Base
  validates :text, :presence => true
  validates :committee, :presence => true

  belongs_to :committee
end
