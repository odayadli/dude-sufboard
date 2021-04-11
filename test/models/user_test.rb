require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid object' do
    user = User.new(username: '', email: 'lennon@gmail.com', password: '123455')
    user.valid?
    assert_not user.errors[:username].empty?
  end

  test 'capital_name returns the capitalized username' do
    user = User.new(username: 'john', email: 'lennon@gmail.com', password: '123455')
    assert_equal 'John', user.capital_name
  end
end
