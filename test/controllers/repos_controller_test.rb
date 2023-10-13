require 'test_helper'

class ReposControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get repos_search_url
    assert_response :success
  end

end
