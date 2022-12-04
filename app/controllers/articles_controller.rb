class ArticlesController < ApplicationController
  def index
    @articles = Article.search_articles(params)
    @search_histories = SearchHistory.new.analyzed_search_history.to_a
  end
end
