module ApplicationHelper
  #@base_title = 'Kays App'
  
  def title
    base_title = 'Matts Project'
    if @title.nil?
       base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    
    image_tag("goku.gif", :alt => "Matts Project", :class => "round")
  end
  
  
end
