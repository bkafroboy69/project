require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Home")
    end
end










describe "when signed in" do
      before(:each) do
        #@user = test_sign_in(Factory(:user))
        @user = Factory(:user)
        controller.sign_in(@user)
        
        other_user = Factory(:user, :email => Factory.next(:email))
        other_user.follow!(@user)
      end
      
 
      
      it "should have the right follower/following counts" do
        get :home
        response.should have_selector("a", :href => following_user_path(@user),
        :content => "0 following")
        response.should have_selector("a", :href => followers_user_path(@user),
        :content => "1 follower")
      end
    end


















  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Contact")
    end
  end
  

 describe "GET 'legal'" do
    it "returns http success" do
      get 'legal'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Legal")
    end
  end

  
  describe "GET 'copyright'" do
    it "returns http success" do
      get 'copyright'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Copyright")
    end
  end

  describe "GET 'privacy'" do
    it "returns http success" do
      get 'privacy'
      response.should be_success
    end
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Privacy")
    end
  end


end
