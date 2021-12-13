class CommentsController < ApplicationController
  def show
    @comment = Comment.find(params[:id])
    @reply = Comment.new
  end

  def new
    # @post = @comment.post
    @post = Post.find(params[:post_id])
    @reply = Comment.new(parent_id: params[:parent_id])
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
        @reply = @comment.reply_to(@parent)
      end

      redirect_to post_path(@comment.post, anchor: "comment-#{@parent ? @parent.id : @comment.id}")

      # @parent ? redirect_to(@parent) : redirect_to(post_path(@comment.post))
      # @parent ? flash[:notice] = 'Reply sent' : flash[:notice] = 'Comment successfully created!'
    end
  end

  def flag
    @comment = Comment.find(params[:id])
    @comment.dislike_by current_user
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
    flash[:notice] = "Comment successfully deleted!"
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :status, :parent_id)
  end
end
