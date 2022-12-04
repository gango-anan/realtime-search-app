require 'rails_helper'

RSpec.describe SearchHistory, type: :model do
  describe 'validate presence of article' do
    it { should validate_presence_of(:article_id) }
  end

  describe 'association' do
    it { should belong_to(:article) }
  end

  describe 'analyzed_search_history' do
    before(:all) do
      [
        {title: "Learning Ruby", body: "The most read ruby article"},
        {title: "Learning Java", body: "The most read Java article"},
      ].each { |article| Article.create(article) }
      [
        {article_id: 1},
        {article_id: 2},
        {article_id: 2},
        {article_id: 2},
      ].each { |search| SearchHistory.create(search) }

      @results = SearchHistory.new.analyzed_search_history
    end

    it 'querry executes successfully' do
      expect(@results).not_to be_empty
    end

    it 'it should return a list of articles with the number of searches' do
      expect(@results[0]["number_of_times_searched"]).to be(3)
    end
  end
end
