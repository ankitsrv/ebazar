require 'test_helper'

class RestaurentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get restaurents_new_url
    assert_response :success
  end

  test "should get edit" do
    get restaurents_edit_url
    assert_response :success
  end

  test "should get index" do
    get restaurents_index_url
    assert_response :success
  end

  test "should get create" do
    get restaurents_create_url
    assert_response :success
  end

  test "should get show" do
    get restaurents_show_url
    assert_response :success
  end

end
