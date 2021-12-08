class AffirmationMessagesController < ApplicationController
  def index
    @mood = Mood.find_by_name(params[:mood])
    @affirmation_message = AffirmationMessage.new

    @messages = AffirmationMessage.where(mood: @mood)
  end


  def create
    @mood = Mood.find(params[:mood_id])
    @affirmation_message = AffirmationMessage.new(affirm_params)
    @affirmation_message.user = current_user
    @affirmation_message.mood = @mood
    @affirmation_message.save
    redirect_to "/affirmationmessages/#{@mood.name}"
  end

  private

  def affirm_params
    params.require(:affirmation_message).permit(:message, :user_id, :mood_id)
  end
end
