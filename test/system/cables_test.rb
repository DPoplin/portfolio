require "application_system_test_case"

class CablesTest < ApplicationSystemTestCase
  setup do
    @cable = cables(:one)
  end

  test "visiting the index" do
    visit cables_url
    assert_selector "h1", text: "Cables"
  end

  test "creating a Cable" do
    visit cables_url
    click_on "New Cable"

    click_on "Create Cable"

    assert_text "Cable was successfully created"
    click_on "Back"
  end

  test "updating a Cable" do
    visit cables_url
    click_on "Edit", match: :first

    click_on "Update Cable"

    assert_text "Cable was successfully updated"
    click_on "Back"
  end

  test "destroying a Cable" do
    visit cables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cable was successfully destroyed"
  end
end
