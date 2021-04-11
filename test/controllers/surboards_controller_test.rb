require 'test_helper'

class SurboardsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  setup do
    sign_in users(:user13)
    @surfboard = surfboards(:skello)
  end

  test 'can get index' do
    get surfboards_url
    assert_response :success
  end

  test 'redirect if not logged in' do
    sign_out :user
    get new_surfboard_url
    assert_response :redirect
    follow_redirect!
    assert_select 'h2', 'Log in'
  end

  test 'can create a surfboard' do
    assert_difference('Surfboard.count') do
      post surfboards_url, params: { surfboard: { name: 'test 2', details: 'test 2', price: '13', location: 'London' } }
    end
    assert_redirected_to surfboard_path(Surfboard.last)
  end

  test 'cannot create a surfboard with invalid attribute' do
    assert_no_difference('Surfboard.count') do
      post surfboards_url, params: { surfboard: { name: 'test 2', details: '', price: '13', location: 'London' } }
    end

  end

  test 'can view surfboard' do
    get surfboard_url(@surfboard)
    assert_response :success
  end

  test 'can edit surfboard' do
    get surfboard_url(@surfboard)
    assert_response :success
  end

  test 'can update surfboard' do
    put surfboard_url(@surfboard), params: { surfboard: { name: 'test 2', details: 'test 2', price: '14', location: 'paris'}}
    assert_redirected_to surfboard_path(@surfboard)
    @surfboard.reload
    assert_equal 'test 2', @surfboard.details
  end
end
