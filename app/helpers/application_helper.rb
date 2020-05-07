module ApplicationHelper
  def user_actions(current_user)
    html = ''

    if current_user
      html += link_to("Profile (#{current_user.name})", current_user)
      html += " - "
      html += link_to('Log Out', logout_path) 
    else
      html += link_to('Sign Up', sign_up_path)
      html += " or "
      html += link_to('Log In', login_path)
    end
    return html.html_safe
  end

  def create_event
    html = ''
    if current_user
      html += ' | '
      html += link_to('Create event', new_event_path)
    end

    return html.html_safe
  end

  def attend(event)
    html = ''
    unless current_user.attended_events.include?(event)
      html += button_to "Attend", attend_event_path(event_attendee: current_user, attended_event: event)
    end

    return html.html_safe
  end
end
