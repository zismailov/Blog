class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user

    if @post.save
      redirect_to @post, notice: 'Post successfully created.'
    else
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])

    if current_user != @post.user
      render :show
    end
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post, notice: 'Post successfully updated.'
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])

    if request.path != post_path(@post)
      redirect_to @post, status: :moved_permanently
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, notice: 'Post successfully deleted.'
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end
end
