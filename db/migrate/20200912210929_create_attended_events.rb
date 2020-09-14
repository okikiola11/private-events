class CreateAttendedEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :attended_events do |t|
      t.references :event_attendee, foreign_key: { to_table: :users }
      t.references :event_attending, foreign_key: { to_table: :events} 

      t.timestampss
    end
  end
end
