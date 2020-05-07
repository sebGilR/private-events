require 'rails_helper'

RSpec.feature "Events", :type => :feature do
    scenario "Create a new event" do
        @user = User.new(:name => "User", :email => "Email@email.com")
        @user.save
        visit "/login"
        fill_in "email", :with => "Email@email.com"
        click_button "Log In"

        visit "events/new"
        fill_in "event_description", :with => "description for event"
        fill_in "event_date", :with => "2020-05-07"

        click_button "Create Event"

        expect(page).to have_text("Event created successfully")
    end

    scenario "User attends an event" do
        @user1 = User.create(:name => "User 1", :email => "Email1@email.com")
        @user2 = User.create(:name => "User 2", :email => "Email2@email.com")
        
        @event = Event.create(:description => "Event", :date => "2020-05-07")
        @user2.created_events << @event

        visit "/login"
        fill_in "email", :with => "Email1@email.com"
        click_button "Log In"

        click_button "Attend"

        expect(page).to have_text("Successfully added to your events")
    end
end