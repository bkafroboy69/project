require 'spec_helper'

describe "LayoutLinks" do
  
    it "should have a home page at '/'" do
      get '/'
      response.should have_selector("title", :content => "Matts Project | Home")
    end
  
     it "should have a legal page at '/legal'" do
      get '/legal'
      response.should have_selector("title", :content => "Matts Project  | Legal")
    end
    
     it "should have an about page at '/contact'" do
      get '/contact'
      response.should have_selector("title", :content => "Matts Project  | Contact")
    end
    
    it "should have an about page at '/copyright'" do
      get '/copyright'
      response.should have_selector("title", :content => "Matts Project  | Copyright")
    end
    
    it "should have an about page at '/privacy'" do
      get '/privacy'
      response.should have_selector("title", :content => "Matts Project  | Privacy")
    end
    
    it "should have a help page at '/help'" do
      get '/help'
      response.should have_selector("title", :content => "Matts Project  | Help")
    end
    
     it "should have a sign-up page at '/signup'" do
      get '/signup'
      response.should have_selector("title", :content => "Sign up")
    end
    
    it "should have the right links on the layout" do
      visit root_path
      response.should have_selector('title', :content => "Home")
      click_link "Legal"
      response.should have_selector('title', :content => "Legal")
      click_link "Contact"
      response.should have_selector('title', :content => "Contact")
      click_link "Copyright"
      response.should have_selector('title', :content => "Copyright")
      click_link "Privacy"
      response.should have_selector('title', :content => "Privacy")
      click_link "Home"
      response.should have_selector('title', :content => "Home")
      click_link "Sign up now"
      response.should have_selector('title', :content => "Sign up")
      response.should have_selector('a[href="/"]>img')
     end

  describe "when not signed in" do
    it "should have a signin link" do
      visit root_path
      response.should have_selector("a", :href => signin_path,
      :content => "Sign in")
    end
  end

  describe "when signed in" do
    before (:each) do
      tempUser = {:name => "John Doe", :email => "jdoe@example.com"}
      @user = User.create!(tempUser)
      visit signin_path
      fill_in :email, :with => "jdoe@example.com"
      click_button
    end

    it "should have a signout link" do
      visit root_path
      response.should have_selector("a", :href => signout_path,
                                         :content => "Sign out")
    end

    it "should have a profile links" do
      visit root_path
      response.should have_selector("a", :href => user_path(@user),
                                         :content => "Profile")
    end
  end
end