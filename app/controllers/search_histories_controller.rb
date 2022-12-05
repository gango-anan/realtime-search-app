class SearchHistoriesController < ApplicationController
  
    def new
      @search_history = SearchHistory.new
    end
  
    def create
      @search_history= SearchHistory.new(search_histories_params)
      if @search_history.save
        redirect_to new_search_history_path
      else
        render :new
      end
    end
  
    private
    def search_histories_params
      params.require(:search_history).permit(:article_id)
    end
  end
  