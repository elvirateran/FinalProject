require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    it "should have the right title" do
          get 'home'
          response.should have_selector("title",
                            :content => "Gamma Phi Beta | Home")
        end
     end

  describe "GET 'profile'" do
    it "should be successful" do
      get 'profile'
      response.should be_success
    end
    it "should have the right title" do
          get 'profile'
          response.should have_selector("title",
                            :content => "Gamma Phi Beta | My Profile")
        end
  end

  describe "GET 'contacts'" do
    it "should be successful" do
      get 'contacts'
      response.should be_success
    end
    it "should have the right title" do
          get 'contacts'
          response.should have_selector("title",
                            :content => "Gamma Phi Beta | Contacts")
        end
  end

  describe "GET 'calendar'" do
    it "should be successful" do
      get 'calendar'
      response.should be_success
    end
    it "should have the right title" do
          get 'calendar'
          response.should have_selector("title",
                            :content => "Gamma Phi Beta | Calendar")
        end
  end

  describe "GET 'discussions'" do
    it "should be successful" do
      get 'discussions'
      response.should be_success
    end
    it "should have the right title" do
          get 'discussions'
          response.should have_selector("title",
                            :content => "Gamma Phi Beta | Discussions")
        end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    it "should have the right title" do
          get 'about'
          response.should have_selector("title",
                            :content => "Gamma Phi Beta | About")
        end
  end

end
