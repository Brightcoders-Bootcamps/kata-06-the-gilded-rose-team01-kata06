require_relative '../../app/items/conjured'

describe Conjured do
  describe 'stats' do
    it 'update sell_in and quallity' do
      conjured = Conjured.new('Conjured Mana Cake', 3, 6)
      conjured.stats
      expect(conjured.sell_in).to eql(2)
      expect(conjured.quality).to eql(4)
    end
  end
end
