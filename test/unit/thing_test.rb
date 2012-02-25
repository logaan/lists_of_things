require 'test_helper'

class ThingTest < ActiveSupport::TestCase
  test "name required" do
    thing = FactoryGirl.build(:thing, :name => nil)
    assert_false thing.valid?
    assert thing.errors.messages[:name].include?("can't be blank")
  end

  def assert_false(actual, message = nil)
    assert_equal(false, actual, message)
  end
end
