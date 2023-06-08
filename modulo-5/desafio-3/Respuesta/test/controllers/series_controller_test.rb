require "test_helper"

class SeriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get series_index_url
    assert_response :success
  end

  test "should get create" do
    get series_create_url
    assert_response :success
  end

  test "should get new" do
    get series_new_url
    assert_response :success
  end
end
