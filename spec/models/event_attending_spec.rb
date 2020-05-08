require 'rails_helper'

RSpec.describe EventAttending, type: :model do
  describe 'create event attending' do
    it 'creates a new event attending' do
      @user = User.new(name: 'User', email: 'Email')
      @event = Event.new(description: 'Event', date: '2020-05-07')
      @eventattending = EventAttending.new(event_attendee: @user, attended_event: @event)

      expect(@eventattending).to be_a_new(EventAttending)
    end
  end
end
