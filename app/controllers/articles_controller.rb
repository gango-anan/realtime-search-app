class ArticlesController < ApplicationController
  def index
    @articles = Article.search_articles(params)
  end
end
