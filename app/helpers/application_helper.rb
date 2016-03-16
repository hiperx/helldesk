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
      link_to "logout" + ' [' +user_name + ' ]', :logout, :method => :delete
    else
      link_to "login", :login
    end
  end

  def parse_title(title,length)

    if title.size > length
      title[0..length] + '...'

    else
      title
    end
  end

  def parse_user(user)
    unless user.nil?
      user.name
    else
      "Missing"
    end
  end

  def user_name
    if @current_user
      @current_user.name
    end
    #code
  end

end
