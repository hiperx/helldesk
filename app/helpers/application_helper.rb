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
end
