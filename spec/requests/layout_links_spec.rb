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
  
    describe "when not signed in" do
        it "should have a signin link" do
          visit root_path
          response.should have_selector("a", :href => signin_path,
                                             :content => "Sign in")
        end
      end

      describe "when signed in" do

        before(:each) do
          @user = Factory(:user)
          visit signin_path
          fill_in :email,    :with => @user.email
          fill_in :password, :with => @user.password
          click_button
        end

        it "should have a signout link" do
          visit root_path
          response.should have_selector("a", :href => signout_path,
                                             :content => "Sign out")
        end

        it "should have a profile link" 
        visit root_path
             response.should have_selector("a", :href => user_path(@user),
                                                :content => "Profile")
      end
  
  
end