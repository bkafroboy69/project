class PagesController < ApplicationController
  def home
    @title = "Home"
    if signed_in?
       @micropost = Micropost.new
    end
  end

  def legal
    @title = "Legal"
  end

  def contact
    @title = "Contact"
  end
  
  def copyright
    @title = "Copyright"
  end
  
   def privacy
    @title = "Privacy"
  end
  
  def help
    @title = "Help"
  end
  
  def faq
    @title = "FAQ"
  end
 def profile
    @title = "My Profile"
    #@user = User.where(:id => cookies[:remember_token])
  end
end
