require "test_helper"

class ShowBookControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get show_book_show_url
    assert_response :success
  end
end
