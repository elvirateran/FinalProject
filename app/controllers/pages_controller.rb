class PagesController < ApplicationController
  def home
    @title = "Home"
      if signed_in?
        @micropost = Micropost.new
        @feed_items = current_user.feed.paginate(:page => params[:page])
      end
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
    @title = "Discussions"
  
  end

  def about
    @about = "About"
  end

end
