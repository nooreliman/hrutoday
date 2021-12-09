class PagesController < ApplicationController
  def home
    @moods = Mood.all
    @curr_day = (Time.now - 6.days).wday
  end
end
