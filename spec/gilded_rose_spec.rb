# frozen_string_literal: true

require_relative '../app/gilded_rose'
require_relative '../app/items/aged_brie'

describe GildedRose do
  describe '#update_quality' do
    it 'does not change the name' do
      items = [AgedBrie.new('foo', 0, 0)]
      GildedRose.new(items).update_quality
      expect(items[0].name).to eq 'foo'
    end
  end
end
