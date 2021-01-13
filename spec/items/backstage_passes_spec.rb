require_relative '../../app/items/backstage_passes'

describe BackstagePasses do
  describe 'stats' do
    it 'update sell_in and quallity' do
      backstage_passes = BackstagePasses.new('Backstage passes to a TAFKAL80ETC concert', 15, 20)
      backstage_passes.stats
      expect(backstage_passes.sell_in).to eql(14)
      expect(backstage_passes.quality).to eql(21)
    end
  end
end
