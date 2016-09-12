class ArticlesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @article = @category.articles
  end

  def show
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
  end

  def new
    @category = Category.find(params[:category_id])
    @article = Article.new
  end

  def edit
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])

    if params[:key] && @article.link == params[:key]
      render 'edit'
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end

  def create
    @category = Category.find(params[:category_id])
    @article = @category.articles.build(article_params)
    if @article.save
      flash[:unique_url] = "https://nameless-hamlet-62894.herokuapp.com/categories/#{@category.id}/articles/#{@article.id}/edit?key=#{@article.link}"
      redirect_to category_article_path(@category, @article)
    else
      flash[:alert] = "Errors creating new listing!"
      render "new"
    end
  end

  def update
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to category_article_path(@category, @article)
    else
      flash[:alert] = "Errors updating your listing!"
      render "edit"
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to category_articles_path(@category)
  end

  private

  def article_params
    params.require(:article).permit(:name, :description, :price)
  end



end
