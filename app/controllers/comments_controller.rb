class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :destroy]

  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    @post.comments << @comment

    if @comment.save
      redirect_to @post, notice: 'Comment successfully created.'
    else
      redirect_to @post, alert: 'Comment not created.'
    end
  end

  def destroy
    @post = Post.find(params[:post_id])

    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to @post, notice: 'Comment successfully deleted.'
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
