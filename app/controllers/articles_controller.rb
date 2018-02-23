class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      # flash[:notice] = "Article was successfully created."
      redirect_to @article, notice: "Article was successfully created."
    else
      render 'new'
    end
  end

  private

  def article_params
    params[:article].permit(:title, :content, :author)
  end
end
