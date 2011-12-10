class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def profile
    @title = "Profile"
  end

  def contacts
    @title = "Contacts"
  end

  def calendar
    @title = "Calendar"
  end

  def discussions
    @discussions = "Discussions"
  end

  def about
    @about = "About"
  end

end
