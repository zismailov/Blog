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

    if current_user.admin? or current_user == @comment.user
      @comment.destroy
      redirect_to @post, notice: 'Comment successfully deleted.'
    else
      redirect_to @post, alert: 'You can\'t delete this comment.'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
