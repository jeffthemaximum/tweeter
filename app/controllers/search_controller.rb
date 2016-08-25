class SearchController < ApplicationController
  def index
    if params[:q]
      t = TwitterSearchAPI.new
      @results = t.query(search_params[:q], json=false)
      render 'results'
    end
  end

  private
    def search_params
      params.permit(:q)
    end
end
