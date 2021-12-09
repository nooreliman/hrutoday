class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = Comment.where(post: @post)
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post)
      flash[:notice] = 'Comment successfully created!'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, :status)
  end

end
