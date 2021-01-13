# frozen_string_literal: true

require_relative '../../app/items/aged_brie'

describe AgedBrie do
  describe 'stats' do
    it 'update sell_in and quallity' do
      aged_brie = AgedBrie.new('Aged Brie', 2, 0)
      aged_brie.stats
      expect(aged_brie.sell_in).to eql(1)
      expect(aged_brie.quality).to eql(1)
    end
  end
end
