require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(firstname: "Example", lastname: "User", username: "ExampleUser1", email: "exampleuser@test.com", password: "password", password_confirmation: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "fistname should be present" do
    @user.firstname = "     "
    assert_not @user.valid?
  end

  test "lastname should be present" do
    @user.lastname = "     "
    assert_not @user.valid?
  end

  test "username should be present" do
    @user.username = "     "
    assert_not @user.valid?
  end

  test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "firstname should not be too long" do
    @user.firstname = "a" * 51
    assert_not @user.valid?
  end

  test "lastname should not be too long" do
    @user.lastname = "a" * 51
    assert_not @user.valid?
  end

  test "username should not be too long" do
    @user.username = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@example.COM A_US-ER@exa.mple.org
                         first.last@exmp.jp alice+bob@ale.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_example.org user.name@example.
                           foo@exa_exa.com foo@exa+exa.com foo@example..com]
    invalid_addresses.each do |invalid_address|
      @user.email = invalid_address
      assert_not @user.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end

  test "email addresses should be saved as lower-case" do
    mixed_case_email = "Foo@ExAMPle.CoM"
    @user.email = mixed_case_email
    @user.save
    assert_equal mixed_case_email.downcase, @user.reload.email
  end

  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end

  test "authenticated? should return false for a user with nil digest" do
    assert_not @user.authenticated?('')
  end

  test "associated listings should be destroyed" do
    @user.save
    @user.listings.create!(title: "New Listing", description: "Lorem ipsum", price: 15)
    assert_difference 'Listing.count', -1 do
      @user.destroy
    end
  end
end
