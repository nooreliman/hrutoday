class PostsController < ApplicationController
  def index
    @forum = Forum.find(params[:forum_id])
    @posts = Post.where(forum_id: @forum)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @forum = Forum.find(params[:forum_id])
    @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      @post.user = current_user
      @forum = Forum.find(params[:forum_id])
      @post.forum = @forum
      if @post.save
        redirect_to post_path(@post)
        flash[:notice] = 'Post successfully created!'
      end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :forum_id, :user_id, :status)
  end
end
