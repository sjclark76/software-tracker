require "test_helper"

class ToolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tools_path
    assert_response :success

    assert_select "h1", 'Tools'

    assert_select "a", "New Tool"
  end
end
