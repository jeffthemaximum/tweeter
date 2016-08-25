require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get tweet_create" do
    get api_tweet_create_url
    assert_response :success
  end

end
