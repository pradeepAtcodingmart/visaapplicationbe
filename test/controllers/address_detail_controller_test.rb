require 'test_helper'

class AddressDetailControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get address_detail_create_url
    assert_response :success
  end

  test "should get delete" do
    get address_detail_delete_url
    assert_response :success
  end

  test "should get show" do
    get address_detail_show_url
    assert_response :success
  end

  test "should get update" do
    get address_detail_update_url
    assert_response :success
  end

end
