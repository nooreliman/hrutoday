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
      flash[:notice] = "Post successfully created!"
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    if @post.save
      redirect_to post_path(@post)
      flash[:notice] = "Post successfully edited!"
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @forum = @post.forum
    @post.destroy
    redirect_to forum_posts_path(@forum)
    flash[:notice] = "Post successfully deleted!"
  end

  def myposts
    @posts = current_user.posts
  end

  def flag
    @post = Post.find(params[:id])
    @post.dislike_by current_user
  end

  def favorite
    @post = Post.find(params[:id])
    if current_user.favorited?(@post) ? current_user.unfavorite(@post) : current_user.favorite(@post)
      redirect_to forum_posts_path(@post.forum)
    else
      render 'forum_posts/show'
    end
  end

  def favorites
    @favorites = current_user.all_favorited
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :forum_id, :user_id, :status)
  end
end
