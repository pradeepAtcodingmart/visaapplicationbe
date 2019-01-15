require 'test_helper'

class ProfileDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get profile_details_create_url
    assert_response :success
  end

  test "should get show" do
    get profile_details_show_url
    assert_response :success
  end

  test "should get update" do
    get profile_details_update_url
    assert_response :success
  end

  test "should get delete" do
    get profile_details_delete_url
    assert_response :success
  end

end
