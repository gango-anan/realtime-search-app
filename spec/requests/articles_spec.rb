require 'rails_helper'

RSpec.describe "Articles", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get articles_path
      expect(response).to have_http_status(:success)
    end

    it "page should have the title" do
      visit articles_path
      expect(page).to have_content("Real Time Article Search Engine")
    end
  end

  describe "the search process" do
    before(:all) do
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
    end

    before(:each) {
      visit articles_path
    }

    scenario "when correct search input is entered in the search box and button is clicked, returns results related to that search" do
      fill_in 'query', with: 'Learning Golang the hard way'
      click_button 'Search'
      expect(page).to have_content 'Learning Golang the hard way'
    end

    scenario "when wrong input is entered in search box, doesn't return anything related to the wrong input" do
      fill_in 'query', with: 'Helpjuice'
      click_button 'Search'
      expect(page).not_to have_content 'Helpjuice'
    end

    scenario "when no input is entered in search box, doesn't return anything", js: true do
      fill_in 'query', with: ''
      expect(page).to have_content ''
    end

    scenario "partial search, returns all data that partially matches the input data", js: true do
      fill_in 'query', with: 'G'
      click_button 'Search'
      expect(page).to have_content 'Learning Golang the hard way'
    end
  end
end
