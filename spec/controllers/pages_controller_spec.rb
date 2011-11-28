require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "returns http success" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

 describe "GET 'legal'" do
    it "returns http success" do
      get 'legal'
      response.should be_success
    end
  end
  
  describe "GET 'copyright'" do
    it "returns http success" do
      get 'copyright'
      response.should be_success
    end
  end

  describe "GET 'privacy'" do
    it "returns http success" do
      get 'privacy'
      response.should be_success
    end
  end


end
