class Article < ApplicationRecord
    has_many :search_histories
    validates :title, presence: true
    validates :body, presence: true

    def self.search_articles(params)
        @search_results = params[:query].blank? ? [] : where("title LIKE ?", "%#{sanitize_sql_like(params[:query])}%")
        if @search_results && @search_results.length == 1 && @search_results[0].title == params[:query]
            SearchHistory.create(article_id: @search_results[0].id)
        end
        @search_results
    end
end

