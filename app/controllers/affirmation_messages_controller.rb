class AffirmationMessagesController < ApplicationController
  def index
    @mood = Mood.find_by_name(params[:mood])
    @user_mood = UserMood.new
    @user_mood.user = current_user
    @user_mood.mood = @mood
    if (current_user.user_moods.empty? || @user_mood.mood != current_user.user_moods.last.mood)
      @user_mood.save
    end
    @affirmation_message = AffirmationMessage.new

    @messages = AffirmationMessage.where(mood: @mood)
  end

  def create
    @mood = Mood.find(params[:mood_id])
    @affirmation_message = AffirmationMessage.new(affirm_params)
    # analysis_result = LanguageService.analyze_sentiment(@affirmation_message.message)
    @affirmation_message.user = current_user
    @affirmation_message.mood = @mood

    @messages = AffirmationMessage.where(mood: @mood)

    # if analysis_result.document_sentiment.score > -0.8
      # @affirmation_message.save
        if @affirmation_message.save
          redirect_to "/affirmationmessages/#{@mood.name}"
          flash[:notice] = "Thank you for sharing some kind words to others feeling the same!"
        end
    # else
      # flash[:notice] = "This was too negative!"
      # render :index
    # end
  end

  def flag
    @affirmation_message = AffirmationMessage.find(params[:id])
    @affirmation_message.dislike_by current_user

    respond_to do |format|
      format.html
      format.json { render json: { status: "ok" } }
    end
  end

  private

  def affirm_params
    params.require(:affirmation_message).permit(:message, :user_id, :mood_id)
  end
end
