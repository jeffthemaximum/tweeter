
class TwitterSearchAPI

  def initialize
    binding.pry
    @client = TwitterClientAPI.client
  end

  def query(q, json=true)
    @results = @client.search(q)
  end

end