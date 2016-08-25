require 'test_helper'

class StoredQueryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get stored_query_create_url
    assert_response :success
  end

end
