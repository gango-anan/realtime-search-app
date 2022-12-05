class Article < ApplicationRecord
    has_many :search_histories
    validates :title, presence: true
    validates :body, presence: true

    def self.search_articles(params)
        [
            {title: "Learning Ruby the hard way", body: "The most read ruby article"},
            {title: "Learning Java the hard way", body: "The most read Java article"},
            {title: "Learning Rails the hard way", body: "The most read Rails article"},
            {title: "Learning JavaScript the hard way", body: "The most read JavaScript article"},
            {title: "Learning SQL the hard way", body: "The most read SQL article"},
            {title: "Learning Python the hard way", body: "The most read Python article"},
            {title: "Learning Golang the hard way", body: "The most read Golang article"},
            {title: "Learning React the hard way", body: "The most read React article"},
            {title: "Learning TypeScript the hard way", body: "The most read TypeScript article"},
            {title: "Learning C++ the hard way", body: "The most read C++ article"}
        ].each { |article| Article.create(article) }

        [
            {article_id: 1},
            {article_id: 2},
            {article_id: 3},
            {article_id: 4},
            {article_id: 5},
            {article_id: 6},
            {article_id: 7},
            {article_id: 2},
            {article_id: 1},
            {article_id: 2},
            {article_id: 2},
            {article_id: 8},
            {article_id: 2},
            {article_id: 2},
            {article_id: 1}
          ].each { |search| SearchHistory.create(search) }
    
        []
    end
end
