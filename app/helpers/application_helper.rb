module ApplicationHelper
  #@base_title = 'Matts Project'
  
  def title
    base_title = 'Matts Project'
    if @title.nil?
       base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    image_tag("goku2.gif", :alt => "Matts Project", :class => "round")
  end
  
  
end
