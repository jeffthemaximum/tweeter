class GetProjectsTweetsWorker
  include Sidekiq::Worker

  def perform
    t = TwitterSearchAPI.new
    stored_queries = StoredQuery.all
    stored_queries.each do |sq|
      @results = t.query(sq.search, json=false)
      @results.each do |result|
        tweet = Tweet.find_or_create_by(stored_query: sq, response: result.to_json)
      end
    end
  end
end