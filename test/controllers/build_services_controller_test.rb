require "test_helper"

class BuildServicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @build_service = build_services(:one)
  end

  test "should get index" do
    get build_services_url
    assert_response :success
  end

  test "should get new" do
    get new_build_service_url
    assert_response :success
  end

  test "should create build_service" do
    assert_difference('BuildService.count') do
      post build_services_url, params: { build_service: { address: @build_service.address, build_timeline: @build_service.build_timeline, email: @build_service.email, keyboard: @build_service.keyboard, lube_service: @build_service.lube_service, name: @build_service.name, paypal: @build_service.paypal, switches: @build_service.switches } }
    end

    assert_redirected_to build_service_url(BuildService.last)
  end

  test "should show build_service" do
    get build_service_url(@build_service)
    assert_response :success
  end

  test "should get edit" do
    get edit_build_service_url(@build_service)
    assert_response :success
  end

  test "should update build_service" do
    patch build_service_url(@build_service), params: { build_service: { address: @build_service.address, build_timeline: @build_service.build_timeline, email: @build_service.email, keyboard: @build_service.keyboard, lube_service: @build_service.lube_service, name: @build_service.name, paypal: @build_service.paypal, switches: @build_service.switches } }
    assert_redirected_to build_service_url(@build_service)
  end

  test "should destroy build_service" do
    assert_difference('BuildService.count', -1) do
      delete build_service_url(@build_service)
    end

    assert_redirected_to build_services_url
  end
end
