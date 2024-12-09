require "test_helper"

class WorkitemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get workitems_index_url
    assert_response :success
  end
end
