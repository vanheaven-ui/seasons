class CategoriesController < ApplicationController
  before_action :require_login

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category, notice: 'Category created!'
    else
      render 'new', alert: 'Ops, check your entry, something wrong'
    end
  end

  def index
    @categories = Category.all
    @articles = Article.all.includes(:categories)
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name, :priority)
  end
end
