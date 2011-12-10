require 'spec_helper'

describe "LayoutLinks" do

  it "should have a About page at '/'" do
    get '/'
    response.should have_selector('title', :content => "About")
  end

  it "should have a Home page at '/home'" do
    get '/home'
    response.should have_selector('title', :content => "Home")
  end

  it "should have a Profile page at '/profile'" do
    get '/profile'
    response.should have_selector('title', :content => "Profile")
  end

  it "should have a Contacts page at '/contacts'" do
    get '/contacts'
    response.should have_selector('title', :content => "Contacts")
  end

  it "should have an Calendar page at '/calendar'" do
    get '/calendar'
    response.should have_selector('title', :content => "Calendar")
  end
  
  it "should have a Discussions page at '/discussions'" do
    get '/discussions'
    response.should have_selector('title', :content => "Discussions")
  end
  it "should have a signup page at '/signup'" do
      get '/signup'
      response.should have_selector('title', :content => "Sign up")
    end
  
  
end