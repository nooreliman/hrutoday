class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @moods = Mood.all
    @curr_day = (Time.now - 6.days).wday
  end
end
