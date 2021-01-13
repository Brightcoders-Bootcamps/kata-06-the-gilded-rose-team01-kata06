require_relative '../src/gilded_rose'
require_relative '../src/items/item'
require 'test/unit'

class TestUntitled < Test::Unit::TestCase
  def test_foo
    items = [Item.new('foo', 0, 0)]
    GildedRose.new(items).update_quality
    assert_equal items[0].name, 'fixme'
  end
end
