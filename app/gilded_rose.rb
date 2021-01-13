#...
require_relative "identify_item"

class GildedRose
  attr_reader :items
  
  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each do |item|
      item.stats
    end
  end
end