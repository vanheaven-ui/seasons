class ArticlesController < ApplicationController
  before_action :set_article, only: %i[show edit update destroy]
  before_action :require_login, except: %i[index]

  # GET /articles
  # GET /articles.json
  def index
    @sorted_categories = Category.all.includes(:articles).order('priority').limit(4)
    @articles = Article.all
    @users = User.all.preload(:authored_articles).limit(6).where.not(id: [nil, false])
  end

  # GET /articles/1
  # GET /articles/1.json
  def show; end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    authorize! :edit, @article
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = current_user.authored_articles.build(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
      else
        format.html { render :new, alert: 'Ops, something is wrong, check your entry' }
      end
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
      else
        format.html { render :edit, alert: 'Ops, something is wrong, check your entry' }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    respond_to do |format|
      if @article.destroy
        format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      else
        format.html { redirect_to article_path(@article), alert: 'cannot delete article' }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_article
    @article = Article.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def article_params
    params.require(:article).permit(:title, :text, :image, category_ids: [])
  end
end
