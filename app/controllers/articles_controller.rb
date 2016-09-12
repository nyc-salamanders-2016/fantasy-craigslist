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
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def article_params
    params.require(:article).permit(:name, :description, :price)
  end



end
