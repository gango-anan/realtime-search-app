class Article < ApplicationRecord
    has_many :search_histories

    def self.search_articles(params)
        @search_results = params[:query].blank? ? [] : where("title LIKE ?", "%#{sanitize_sql_like(params[:query])}%")
    end

    def self.search_history(params)
        if @search_results && @search_results.length == 1 && @search_results[0].title == params[:query]
            SearchHistory.create(article_id: @search_results[0].id)
        end

        SearchHistory.includes(:article).all
    end
end
