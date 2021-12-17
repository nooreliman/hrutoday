class PagesController < ApplicationController

  DAYS = ["S", "M", "T", "W", "T", "F","S"]

  def home
    @moods = Mood.all
    @curr_day = Time.now.wday
  end
end
