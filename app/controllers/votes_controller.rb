class VotesController < ApplicationController
  before_action :require_login

  def new; end

  def create
    @vote = current_user.votes.build(vote_params)
    if @vote.save
      redirect_to article_path(id: params[:article_id]), notice: 'You voted an article'
    else
      redirect_to article_path(id: params[:article_id]), alert: 'Ops, something is wrong'
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    if @vote.destroy
      redirect_to article_path(id: params[:article_id]), notice: 'You unvoted an article'
    else
      redirect_to article_path(id: params[:article_id]), alert: 'Ops, something is wrong'
    end
  end

  private

  def vote_params
    params.permit(:article_id)
  end
end
