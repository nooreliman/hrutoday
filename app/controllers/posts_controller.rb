class PostsController < ApplicationController
  def index
    @forum = Forum.find(params[:forum_id])
    @posts = Post.where(forum_id: @forum)
  end
end
