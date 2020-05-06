require 'rails_helper'

RSpec.describe Event, type: :model do
  let!("event") { Event.new(:description => "description", :date => "date") }
  describe "create" do
    it "creates a new event object when input is valid" do
      expect(event).to be_a_new(Event)
    end
  end
end