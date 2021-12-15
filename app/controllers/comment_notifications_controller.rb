class CommentNotificationsController < ApplicationController
  def mark
    @notification = Notification.find(params[:id])
    @notification.mark_as_read!

    respond_to do |format|
      format.json { render json: { notification: @notification } }
    end
  end
end
