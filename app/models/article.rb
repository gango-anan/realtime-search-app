# class Article < ApplicationRecord
#     has_many :search_histories

#     def self.search_articles(params)
#         @search_results = params[:query].blank? ? [] : where("title LIKE ?", "%#{sanitize_sql_like(params[:query])}%")
#     end

#     def self.search_history(params)
#         if @search_results && @search_results.length == 1 && @search_results[0].title == params[:query]
#             SearchHistory.create(article_id: @search_results[0].id)
#         end

#         SearchHistory.includes(:article).all
#     end

#     private

#     def query_serached_articles
#         <<-SQL
#             SELECT aricles.title, COUNT(*) AS num_of_times_searched
#             FROM articles
#             JOIN search_histories ON search_histories.article_id = articles.id
#             GROUP BY articles.title
#             ORDER BY num_of_times_searched;
#         SQL
#   end
# end

class Article < ApplicationRecord
    has_many :search_histories

    def self.search_articles(params)
        @search_results = params[:query].blank? ? [] : where("title LIKE ?", "%#{sanitize_sql_like(params[:query])}%")
        if @search_results && @search_results.length == 1 && @search_results[0].title == params[:query]
            SearchHistory.create(article_id: @search_results[0].id)
        end
        @search_results
    end
end

