require 'test_helper'

class ThingTest < ActiveSupport::TestCase
  test "that name is required" do
    thing = FactoryGirl.build(:thing, :name => nil)
    assert_false thing.valid?
    assert thing.errors.messages[:name].include?("can't be blank")
  end

  test "things can have children" do
    parent = FactoryGirl.create(:thing_with_children, :child_count => 2)
    assert_equal 2, parent.children.count
  end

  test "things can have parents" do
    child = FactoryGirl.create(:thing_with_parents, :parent_count => 2)
    assert_equal 2, child.parents.count
  end
end

