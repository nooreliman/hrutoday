class UserMoodsController < ApplicationController
  def create
    @um = UserMood.new
    @um.user = current_user
    @um.save

    redirect_to "/affirmationmessages/#{@mood.name}"
  end
end
