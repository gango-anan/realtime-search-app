class ArticlesController < ApplicationController
  def index
    @articles = Article.search_articles(params)
    @search_history_results = SearchHistory.search_history(params)
  end
end
