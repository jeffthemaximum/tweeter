class TweetsController < ApplicationController
  def hello
  end

  def new
    binding.pry
    
    # t = TwitterSearchAPI.new
    # @results = t.query(store_params[:s], json=false)
    # @results.each do |result|
    #   tweet = Tweet.find_or_create_by(search: store_params[:s], response: result.to_json)
    # end
    @tweet = Tweet.find_or_create_by(search: store_params[:s])
  end

  private
    def store_params
      params.permit(:s)
    end
end
