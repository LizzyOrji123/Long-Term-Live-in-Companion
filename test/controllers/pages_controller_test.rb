require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get why" do
    get pages_why_url
    assert_response :success
  end
end
