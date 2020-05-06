class EventattendingsController < ApplicationController
  def create
    current_user.attended_events << Event.find(params[:id])

    current_user.save
    redirect_to root_path
  end
end
