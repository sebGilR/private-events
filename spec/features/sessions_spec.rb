require 'rails_helper'

RSpec.feature "Session Authentication", :type => :feature do
    scenario "Valid User login" do
        @user = User.new(:name => "User", :email => "Email@email.com")
        @user.save
        visit "/login"
        fill_in "email", :with => "Email@email.com"
        click_button "Log In"

        expect(page).to have_text("Logged in")
    end
    scenario "Invalid User login" do
        @user = User.new(:name => "User", :email => "Email@email.com")
        @user.save
        visit "/login"
        fill_in "email", :with => "Email"
        click_button "Log In"

        expect(page).to have_text("Email is not valid")
    end
end