require_relative "update_inventory"
require_relative "aged_brie"
require_relative "sulfuras"
require_relative "backstage_passes"
require_relative "conjured"

class IdentifyItem
  def identify( name, sell_in, quality )
    if name.include? 'Conjured'
      Conjured.new name, sell_in, quality
    elsif name.include? 'Sulfuras'
      Sulfuras.new name, sell_in, quality
    elsif name.include? 'Aged Brie'
      AgedBrie.new name, sell_in, quality
    elsif name.include? "Backstage passes"
      BackstagePasses.new name, sell_in, quality
    else
      UpdateInventory.new name, sell_in, quality
    end
  end
end