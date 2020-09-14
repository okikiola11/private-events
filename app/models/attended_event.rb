class AttendedEvent < ApplicationRecord
  belongs_to :event_attendee, class_name: 'User'
  belongs_to :event_attending, class_name: 'Event'
end
