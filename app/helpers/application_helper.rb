module ApplicationHelper
  
  ## Will render on views as html. 
  ## Removes redundant code for common items.
  def login_helper
     if current_user.is_a?(GuestUser)
      ## Chaining of these with + will concatenate the calls
      ## preventing Ruby from only returning the last item!
      (link_to "Register", new_user_registration_path, class: 'btn btn-success') + "&nbsp;&nbsp;&nbsp;".html_safe +
      (link_to "Login", new_user_session_path, class: 'btn btn-secondary')
     else
      link_to "Logout", destroy_user_session_path, method: :delete, class: 'btn btn-primary'
     end
  end

  def source_helper(layout_name)
    if session[:source]
      greeting = "Thanks for visiting from #{session[:source]} and you are on the #{layout_name} layout"
      content_tag(:p, greeting, class: "source-greeting")
    end
  end

  def copyright_generator
    FuelcncViewTool::Renderer.copyright 'FuelCNC', 'All rights resereved'
  end
end
