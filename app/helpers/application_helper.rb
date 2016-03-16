module ApplicationHelper
  def provide_title(subtitle='')
    hell= 'Helldesk'
    unless @title.nil?
      subtitle=@title
    end
    if subtitle.empty?
      hell
    else
      hell + " | " + subtitle
    end
  end

  def login_logout
    unless @current_user.nil?
      link_to "logout", :logout, :method => :delete
    else
      link_to "login", :login
    end
  end

end
