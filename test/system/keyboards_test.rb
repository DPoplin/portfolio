require 'application_system_test_case'

class KeyboardsTest < ApplicationSystemTestCase
  setup do
    @keyboard = keyboards(:one)
  end

  test 'visiting the index' do
    visit keyboards_url
    assert_selector 'h1', text: 'Keyboards'
  end

  test 'creating a Keyboard' do
    visit keyboards_url
    click_on 'New Keyboard'

    click_on 'Create Keyboard'

    assert_text 'Keyboard was successfully created'
    click_on 'Back'
  end

  test 'updating a Keyboard' do
    visit keyboards_url
    click_on 'Edit', match: :first

    click_on 'Update Keyboard'

    assert_text 'Keyboard was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Keyboard' do
    visit keyboards_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Keyboard was successfully destroyed'
  end
end
