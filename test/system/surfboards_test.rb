require 'application_system_test_case'

class SurfboardsTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit surfboards_url
  #
  #   assert_selector "h1", text: "Surfboard"
  # end
  test 'visiting the home page' do
    visit root_url # "/"
    assert_selector 'h1', text: 'Dude Boards brings'
  end

  test 'visiting the index' do
    visit surfboards_url
    assert_selector '.card-index', count: Surfboard.count

  end

  test 'lets a signed in user create a new product' do
    login_as users(:user13)
    visit '/surfboards/new'
    # save_and_open_screenshot

    fill_in 'surfboard_name', with: 'Le Oday'
    fill_in 'surfboard_details', with: 'Change your life: Learn to surf'
    fill_in 'surfboard_price', with: '15'
    fill_in 'surfboard_location', with: 'london'
    # save_and_open_screenshot

    click_on 'Create Surfboard'
    # save_and_open_screenshot

  end
end
