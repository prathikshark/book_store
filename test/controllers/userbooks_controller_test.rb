require "test_helper"

class UserbooksControllerTest < ActionDispatch::IntegrationTest
  test "should get add_book_to_user" do
    get userbooks_add_book_to_user_url
    assert_response :success
  end
end
