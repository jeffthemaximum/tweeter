class GetProjectsTweetsWorker
  include Sidekiq::Worker

  def perform(project_id)
    tweets = Tweets.all
  end
end