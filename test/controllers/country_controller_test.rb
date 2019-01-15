require 'test_helper'

class CountryControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get country_create_url
    assert_response :success
  end

  test "should get delete" do
    get country_delete_url
    assert_response :success
  end

  test "should get show" do
    get country_show_url
    assert_response :success
  end

  test "should get update" do
    get country_update_url
    assert_response :success
  end

end
