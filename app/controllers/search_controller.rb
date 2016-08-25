class SearchController < ApplicationController
  require 'twitter_search_api'
  def index
    if params[:q]
      t = TwitterSearchAPI::TwitterSearchAPI.new
      @results = t.query(search_params[:q], json=false)
      render 'results'
    end
  end

  private
    def search_params
      params.permit(:q)
    end
end
