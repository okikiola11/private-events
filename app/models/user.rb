class User < ApplicationRecord
  has_many :created_events, foreign_key: 'creator_id', class_name: 'Event'

  has_many :attended_events, foreign_key: :event_attendee_id
  has_many :event_attending, through: :attended_events
end
