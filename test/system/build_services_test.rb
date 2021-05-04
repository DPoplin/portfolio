require "application_system_test_case"

class BuildServicesTest < ApplicationSystemTestCase
  setup do
    @build_service = build_services(:one)
  end

  test "visiting the index" do
    visit build_services_url
    assert_selector "h1", text: "Build Services"
  end

  test "creating a Build service" do
    visit build_services_url
    click_on "New Build Service"

    fill_in "Address", with: @build_service.address
    fill_in "Build timeline", with: @build_service.build_timeline
    fill_in "Email", with: @build_service.email
    fill_in "Keyboard", with: @build_service.keyboard
    check "Lube service" if @build_service.lube_service
    fill_in "Name", with: @build_service.name
    fill_in "Paypal", with: @build_service.paypal
    fill_in "Switches", with: @build_service.switches
    click_on "Create Build service"

    assert_text "Build service was successfully created"
    click_on "Back"
  end

  test "updating a Build service" do
    visit build_services_url
    click_on "Edit", match: :first

    fill_in "Address", with: @build_service.address
    fill_in "Build timeline", with: @build_service.build_timeline
    fill_in "Email", with: @build_service.email
    fill_in "Keyboard", with: @build_service.keyboard
    check "Lube service" if @build_service.lube_service
    fill_in "Name", with: @build_service.name
    fill_in "Paypal", with: @build_service.paypal
    fill_in "Switches", with: @build_service.switches
    click_on "Update Build service"

    assert_text "Build service was successfully updated"
    click_on "Back"
  end

  test "destroying a Build service" do
    visit build_services_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Build service was successfully destroyed"
  end
end
