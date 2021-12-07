class AffirmationmessagesController < ApplicationController
  def index
    @mood = Mood.find_by_name(params[:mood])
    @messages = AffirmationMessage.where(mood: @mood)
  end
end
