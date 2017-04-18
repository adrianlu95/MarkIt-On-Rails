require 'test_helper'

class ListingTest < ActiveSupport::TestCase

  def setup
    @user = users(:tester)
    @listing = @user.listings.build(title: "New Listing", description: "Lorem ipsum", price: 15)
  end

  test "should be valid" do
    assert @listing.valid?
  end

  test "user id should be present" do
    @listing.user_id = nil
    assert_not @listing.valid?
  end

  test "description should be present" do
    @listing.description = "   "
    assert_not @listing.valid?
  end

  test "description should be at most 250 characters" do
    @listing.description = "a" * 251
    assert_not @listing.valid?
  end

  test "title should be present" do
    @listing.title = "   "
    assert_not @listing.valid?
  end

  test "order should be most recent first" do
    assert_equal listings(:most_recent), Listing.first
  end
end
