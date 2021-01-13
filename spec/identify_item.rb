require_relative '../app/identify_item'
require_relative '../app/items/aged_brie'

describe IdentifyItem do
  before(:each) do
    factory = IdentifyItem.new
    @aged_brie = factory.identify('Aged Brie', 2, 0)
    @sulfuras = factory.identify('Sulfuras, Hand of Ragnaros', 0, 80)
    @backstage = factory.identify('Backstage passes to a TAFKAL80ETC concert', 15, 20)
    @conjured = factory.identify('Conjured Mana Cake', 3, 6)
  end

  describe 'identify' do
    it 'return an instance of an object when match an Item' do
      expect(@aged_brie.instance_of?(AgedBrie)).to eql(true)
      expect(@sulfuras.instance_of?(Sulfuras)).to eql(true)
      expect(@backstage.instance_of?(BackstagePasses)).to eql(true)
      expect(@conjured.instance_of?(Conjured)).to eql(true)
    end
  end
end
