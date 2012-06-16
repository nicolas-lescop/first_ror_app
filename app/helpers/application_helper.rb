module ApplicationHelper

  def get_title title
    if title.nil?
      action_name
    else
      title
    end
  end

end
