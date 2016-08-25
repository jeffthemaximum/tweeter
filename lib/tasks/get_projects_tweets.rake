desc "Searches twitter for all tweets about a project by URL"
task :get_projects_tweets => :environment do
  puts "Getting projects tweets"
  GetProjectsTweetsWorker.new.perform
  puts "done."
end