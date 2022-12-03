class Article < ApplicationRecord
    def self.search_articles(params)
        params[:query].blank? ? [] : where("title LIKE ?", "%#{sanitize_sql_like(params[:query])}%")
    end
end
