class PagesController < ApplicationController

  DAYS = ["S", "M", "T", "W", "T", "F","S"]

  def home
    @moods = Mood.all
    @curr_day = (Time.now - 6.days).wday

  end

  def notifications
    @comments = current_user.notifications.sort{ |a,b| b.created_at <=> a.created_at }

    @comments.each do |comment|
      comment.read!
    end
  end
end
