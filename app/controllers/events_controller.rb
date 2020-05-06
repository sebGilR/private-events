class EventsController < ApplicationController
  require 'date'

  def index
    @events = Event.all
    @past = Event.past(Date.today)
    @upcoming = Event.upcoming(Date.today)
  end

  def new
    @event = current_user.created_events.build
  end

  def create
    @event = current_user.created_events.build(event_params)

    if @event.save
      redirect_to @event, notice: "Event created successfully"
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:description, :date)
  end
end
