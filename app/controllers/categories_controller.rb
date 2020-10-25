class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @articles = Article.all
  end
end
