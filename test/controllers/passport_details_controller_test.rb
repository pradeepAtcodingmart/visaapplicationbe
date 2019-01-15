require 'test_helper'

class PassportDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get passport_details_create_url
    assert_response :success
  end

  test "should get delete" do
    get passport_details_delete_url
    assert_response :success
  end

  test "should get show" do
    get passport_details_show_url
    assert_response :success
  end

  test "should get update" do
    get passport_details_update_url
    assert_response :success
  end

end
