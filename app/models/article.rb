class Article < ApplicationRecord
    def self.search_articles(params)
        params[:query].blank? ? all : where("title LIKE ?", "%#{sanitize_sql_like(params[:query])}%")
    end
end
