module EventsHelper

    require 'date'

    def upcoming_events
        current_user.attended_events.select{|event| event.date >= Date.today}
    end

    def previous_events
        current_user.attended_events.select{|event| event.date < Date.today}
    end
end
