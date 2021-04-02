require "test_helper"

class BuildServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get build_service_index_url
    assert_response :success
  end
end
