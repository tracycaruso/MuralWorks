module ApplicationHelper
  def display_present_attribute(name, value)
    if value.present?
	     name + ":  " +  value
	  end
	end

  def display_present_link(link, url)
    if link.present?
	     url
	  end
	end
end
