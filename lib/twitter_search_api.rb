module TwitterSearchAPI
  class TwitterSearchAPI

    def initialize
      @client = TwitterClientAPI.client
    end

    def query(q, json=true)
      @results = @client.search(q)
      @results = @results.attrs[:statuses]
      json ? results_as_json : @results
    end

    private
      def results_as_json
        @results.to_json
      end

  end
end