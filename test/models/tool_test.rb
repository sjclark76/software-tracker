require 'test_helper'

class ToolTest < ActiveSupport::TestCase
  test "should validate name" do
    tool = Tool.new
    assert_not tool.valid?
    assert_includes tool.errors[:name], "can't be blank"

    tool.name = "Hammer"
    assert tool.valid?

    duplicate_tool = Tool.new(name: "Hammer")
    assert_not duplicate_tool.valid?
    assert_includes duplicate_tool.errors[:name], "has already been taken"
  end

  test "should have many tool_users" do
    assert Tool.reflect_on_association(:users).macro == :has_many  end


end
