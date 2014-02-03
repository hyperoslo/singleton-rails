require 'test_helper'

class SingletonRailsTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, SingletonRails
  end
end
