require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should have many tool_users" do
    assert User.reflect_on_association(:tools).macro == :has_many

  end

  test "should return full name" do
    user = User.new(first_name: "John", last_name: "Doe")
    assert_equal "John Doe", user.full_name
  end
end
