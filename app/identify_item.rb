# frozen_string_literal: true

require_relative 'items/update_inventory'
require_relative 'items/aged_brie'
require_relative 'items/sulfuras'
require_relative 'items/backstage_passes'
require_relative 'items/conjured'

# class identify item
class IdentifyItem
  def identify(name, sell_in, quality)
    if name.include? 'Conjured'
      Conjured.new name, sell_in, quality
    elsif name.include? 'Sulfuras'
      Sulfuras.new name, sell_in, quality
    elsif name.include? 'Aged Brie'
      AgedBrie.new name, sell_in, quality
    elsif name.include? 'Backstage passes'
      BackstagePasses.new name, sell_in, quality
    else
      UpdateInventory.new name, sell_in, quality
    end
  end
end
