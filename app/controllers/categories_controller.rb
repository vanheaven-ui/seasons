class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @articles = Article.all.includes(:categories)
  end

  def show
    @category = Category.find(params[:id])
  end
end
