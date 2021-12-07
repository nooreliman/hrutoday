class AffirmationmessagesController < ApplicationController
  def index
    @mood = Mood.find(params[:mood_id])
    @messages = AffirmationMessage.where(mood_id: @mood)
  end
end
