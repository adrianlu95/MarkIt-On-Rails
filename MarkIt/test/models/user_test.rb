require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(firstname: "Example", lastname: "User", username: "ExampleUser1", email: "exampleuser@test.com")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
