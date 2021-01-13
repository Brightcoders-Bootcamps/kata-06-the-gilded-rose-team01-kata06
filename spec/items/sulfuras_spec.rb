# frozen_string_literal: true

require_relative '../../app/items/sulfuras'

describe Sulfuras do
  describe 'stats' do
    it 'update sell_in and quallity' do
      sulfuras = Sulfuras.new('Sulfuras, Hand of Ragnaros', 2, 0)
      sulfuras.stats
      expect(sulfuras.sell_in).to eql(2)
      expect(sulfuras.quality).to eql(80)
    end
  end
end
