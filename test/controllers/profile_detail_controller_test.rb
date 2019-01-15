require 'test_helper'

class ProfileDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get profile_detail_create_url
    assert_response :success
  end

  test "should get update" do
    get profile_detail_update_url
    assert_response :success
  end

  test "should get delete" do
    get profile_detail_delete_url
    assert_response :success
  end

  test "should get show" do
    get profile_detail_show_url
    assert_response :success
  end

end
