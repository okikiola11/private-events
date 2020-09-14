class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  has_many :attended_events, foreign_key: :event_attending_id
  has_many :attendees, through: :attended_events, source: :event_attendee
end
