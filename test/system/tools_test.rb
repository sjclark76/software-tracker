require "application_system_test_case"

class ToolsTest < ApplicationSystemTestCase
  test "Creating a new tool" do
    visit tools_path
    assert_selector "h1", text: "Tools"

    click_on "New Tool"
    assert_selector "h1", text: "New Tool"
  end

end
