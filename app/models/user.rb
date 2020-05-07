class User < ApplicationRecord
  has_many :event_attendings, foreign_key: :event_attendee_id
  has_many :attended_events, through: :event_attendings
  has_many :created_events, foreign_key: :creator_id, class_name: 'Event'

  require 'date'

  def upcoming_events
    attended_events.select { |event| event.date >= Date.today }
  end

  def previous_events
    attended_events.select { |event| event.date < Date.today }
  end
end
