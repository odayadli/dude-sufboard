require 'test_helper'

class SurboardsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test 'create a new surfboard and save it' do
    user = User.new(username: "john", email: "lennon@gmail.com", password: "123455")
    surfo = Surfboard.new(user: user, name: 'surfo pro', details: 'intermediate level', price: '15', location: 'London')
    surfo.save!
  end
end
