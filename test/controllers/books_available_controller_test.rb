require "test_helper"

class BooksAvailableControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get books_available_index_url
    assert_response :success
  end
end
