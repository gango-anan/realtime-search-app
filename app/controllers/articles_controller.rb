class ArticlesController < ApplicationController
  def index
    @articles = Article.search_articles(params)
    @search_histories = SearchHistory.new.analyzed_search_history.to_a
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(articles_params)
    if @article.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def articles_params
    params.require(:article).permit(:title, :body)
  end
end
