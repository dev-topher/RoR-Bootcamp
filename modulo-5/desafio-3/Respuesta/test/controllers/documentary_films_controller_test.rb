require "test_helper"

class DocumentaryFilmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentary_films_index_url
    assert_response :success
  end

  test "should get create" do
    get documentary_films_create_url
    assert_response :success
  end

  test "should get new" do
    get documentary_films_new_url
    assert_response :success
  end
end
