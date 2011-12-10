require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'profile'" do
    it "should be successful" do
      get 'profile'
      response.should be_success
    end
  end

  describe "GET 'contacts'" do
    it "should be successful" do
      get 'contacts'
      response.should be_success
    end
  end

  describe "GET 'calendar'" do
    it "should be successful" do
      get 'calendar'
      response.should be_success
    end
  end

  describe "GET 'discussions'" do
    it "should be successful" do
      get 'discussions'
      response.should be_success
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

end
