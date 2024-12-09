require "test_helper"

class AdditemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get additems_index_url
    assert_response :success
  end
end
