class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
    @reply = Comment.new
  end

  def new
    @post = @comment.post
    @reply = Comment.new
  end

  def create
    # create the new comment
    @comment = Comment.new(comment_params.except(:parent_id))
    @comment.post = Post.find(params[:post_id])
    @comment.user = current_user

    if @comment.save
      if comment_params.include? :parent_id
        # check if there is a parent
        @parent = Comment.find(comment_params.require(:parent_id))

        # if yes, create the relationship
        @comment.reply_to(@parent)
      end

      @parent ? redirect_to(@parent) : redirect_to(post_path(@comment.post))
      @parent ? flash[:notice] = 'Reply sent' : flash[:notice] = 'Comment successfully created!'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :status, :parent_id)
  end
end
