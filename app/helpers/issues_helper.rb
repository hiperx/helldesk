module IssuesHelper

  def get_status(status)
    unless status.nil?
      status.name
    else
      "None"
    end
  end


def set_status(status)
  if status.nil?
    (Status.find_by_name 'New').id
  else
    status
  end
end



end
