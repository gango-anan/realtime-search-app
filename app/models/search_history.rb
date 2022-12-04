class SearchHistory < ApplicationRecord
    belongs_to :article
    validates :article_id, presence: true

    def analyzed_search_history
        ActiveRecord::Base.connection.exec_query(query_searched_articles)
    end

    private

    def query_searched_articles
        <<-SQL
            SELECT articles.title, COUNT(*) AS number_of_times_searched
            FROM articles
            JOIN search_histories ON search_histories.article_id = articles.id
            GROUP BY articles.title
            ORDER BY number_of_times_searched DESC;
        SQL
    end
end
