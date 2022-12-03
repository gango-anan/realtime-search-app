module ApplicationHelper
    def search_count(results)
        search_history_counter = Hash.new(0)
        results.each do |result|
            search_history_counter[result.article.title] += 1
        end

        search_history_counter
    end
end
