require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "capital_name returns the capitalized username" do
    user = User.new(username: "john", email: "lennon@gmail.com", password: "123455")
    assert_equal "John", user.capital_name
  end
end
