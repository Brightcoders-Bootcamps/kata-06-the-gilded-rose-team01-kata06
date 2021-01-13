# frozen_string_literal: true

require_relative '../../app/items/update_inventory'

describe UpdateInventory do
  describe 'stats' do
    it 'update sell_in and quallity' do
      update_inventory = UpdateInventory.new('+5 Dexterity Vest', 10, 20)
      update_inventory.stats
      expect(update_inventory.sell_in).to eql(9)
      expect(update_inventory.quality).to eql(19)
    end
  end
end
