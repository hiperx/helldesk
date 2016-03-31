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

  def admin_home
    unless @current_user.nil?
        if @current_user.admin?
          link_to 'Admin', :users
        else
          link_to 'Home', start_url
        end
    end
  end



  def notes_empty
    unless @current_user.nil?
        if @current_user.admin?
          link_to 'Notes', notes_url
        end
    end
  end


  def parse_title(title,length)
    unless title.nil?
      if title.size > length
      title[0..length] + '...'

      else
        title
      end
    end
  end

  def parse_user(user)
    unless user.nil?
      user.name
    else
      "Missing"
    end
  end

  def parse_statsu(status)
    unless status.nil?
      status.name
    else
      "None"
    end
  end

  def parse_issue(issue)
    unless issue.nil?
      parse_title(issue.title,5)
    else
      'Missing'
    end
    #code
  end

  def parse_txt(txt, col = 80)
  txt.gsub(/(.{1,#{col}})( +|$\n?)|(.{1,#{col}})/,
    "\\1\\3\n")
  end

  def user_name
    if @current_user
      @current_user.name
    end
    #code
  end

  def parse_date(date,sep='-',show_hm=false)
    year=date.year.to_s
    month=date.month.to_s
    day=date.day.to_s
    wday=Date::DAYNAMES[date.wday]


    result = ' | ' + wday + ' ' + year + sep + month + sep + day + ' | '
    if show_hm
      result + ' ' + date.to_s[-12..-8]
    else
      result
    end
    #code
  end


end
