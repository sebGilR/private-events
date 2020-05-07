class EventAttendingsController < ApplicationController
  def new
    @event_attendings = EventAttending.new
  end

  def create
    @event_attendings = EventAttending.new(event_attendee_id: params[:event_attendee], attended_event_id: params[:attended_event])

    @event_attendings.save

    redirect_to root_path, notice: "Successfully added to your events\n"
  end

end
