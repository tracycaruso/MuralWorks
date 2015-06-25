module ApplicationHelper
  def display_present_attribute(name, value)
    if value.present?
	     name + ":  " +  value
	  end
	end

  def display_present_link(link)
    if link.present?
	     link
	  end
	end
end
