require "test_helper"

class GalleryControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gallery_index_url
    assert_response :success
  end

  test "should get keyboards" do
    get gallery_keyboards_url
    assert_response :success
  end

  test "should get cables" do
    get gallery_cables_url
    assert_response :success
  end
end
