class SearchHistory < ApplicationRecord
    belongs_to :article
    validates :article_id, presence: true

    def analyzed_search_history
        []
    end
end
