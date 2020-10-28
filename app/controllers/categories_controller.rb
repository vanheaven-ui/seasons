class CategoriesController < ApplicationController
  before_action :require_login
  
  def index
    @categories = Category.all
    @articles = Article.all.includes(:categories)
  end

  def show
    @category = Category.find(params[:id])
  end
end
