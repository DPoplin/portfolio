require "test_helper"

class BuildServiceControllerTest < ActionDispatch::IntegrationTest
  test "should get form" do
    get build_service_form_url
    assert_response :success
  end
end
