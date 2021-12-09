class AffirmationMessagesController < ApplicationController
  def index
    @mood = Mood.find_by_name(params[:mood])
    @user_mood = UserMood.new
    @user_mood.user = current_user
    @user_mood.mood = @mood
    @user_mood.save
    @affirmation_message = AffirmationMessage.new

    @messages = AffirmationMessage.where(mood: @mood)
  end


  def create
    @mood = Mood.find(params[:mood_id])
    @affirmation_message = AffirmationMessage.new(affirm_params)
    @affirmation_message.user = current_user
    @affirmation_message.mood = @mood
    if @affirmation_message.save
    redirect_to "/affirmationmessages/#{@mood.name}"
    flash[:notice] = 'Thank you for sharing some kind words to others feeling the same!'
    end
  end

  private

  def affirm_params
    params.require(:affirmation_message).permit(:message, :user_id, :mood_id)
  end
end
