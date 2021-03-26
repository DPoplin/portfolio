require "test_helper"

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get feed" do
    get blog_feed_url
    assert_response :success
  end
end
