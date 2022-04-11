class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @shift  = current_user.shifts.build
      @feed_items = current_user.feed
    end
  end

  def help
  end

  def about
  end
end
