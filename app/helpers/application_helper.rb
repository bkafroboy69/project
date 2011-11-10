module ApplicationHelper
  #@base_title = 'Kays App'
  
  def title
    base_title = 'Kays App'
    if @title.nil?
       base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("logo.png", :alt => "Kays App", :class => "round")
  end
  
  
end
