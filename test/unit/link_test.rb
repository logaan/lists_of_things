require 'test_helper'

class LinkTest < ActiveSupport::TestCase
  test "that parent is required" do
    link = FactoryGirl.build(:link, :parent => nil)
    assert_false link.valid?
    assert link.errors.messages[:parent].include?("can't be blank")
  end

  test "that child is required" do
    link = FactoryGirl.build(:link, :child => nil)
    assert_false link.valid?
    assert link.errors.messages[:child].include?("can't be blank")
  end
end
