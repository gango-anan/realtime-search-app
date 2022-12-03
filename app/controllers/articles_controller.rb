class ArticlesController < ApplicationController
  def index
    @articles = Article.search_articles(params)
    @search_histories = Article.search_history(params)
  end
end
