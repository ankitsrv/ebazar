require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get show," do
    get reviews_show,_url
    assert_response :success
  end

  test "should get new," do
    get reviews_new,_url
    assert_response :success
  end

  test "should get index" do
    get reviews_index_url
    assert_response :success
  end

end
