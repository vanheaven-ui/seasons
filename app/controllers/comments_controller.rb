class CommentsController < ApplicationController
  def create
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to article_path(params[:article_id]), notice: 'Comment successfully posted'
    else
      redirect_to article_path(params[:article_id]), alert: 'Ops, something went wrong, try again'
    end
  end

  private

  def comment_params
    params.permit(:comment, :article_id)
  end
end
