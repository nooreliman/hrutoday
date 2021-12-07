class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:id])
    @comment = @post.comment.new
  end

  def create
    @comment = Comment.new
  end
end
