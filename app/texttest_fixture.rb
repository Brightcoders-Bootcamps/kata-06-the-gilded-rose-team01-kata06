#!/usr/bin/ruby -w

require_relative 'gilded_rose'
require_relative 'identify_item'

identify_item = IdentifyItem.new
puts 'OMGHAI!'
items = []
items << identify_item.identify('+5 Dexterity Vest', 10, 20)
items << identify_item.identify('Aged Brie', 2, 0)
items << identify_item.identify('Elixir of the Mongoose', 5, 7)
items << identify_item.identify('Sulfuras, Hand of Ragnaros', 0, 80)
items << identify_item.identify('Sulfuras, Hand of Ragnaros', -1, 80)
items << identify_item.identify('Backstage passes to a TAFKAL80ETC concert', 15, 20)
items << identify_item.identify('Backstage passes to a TAFKAL80ETC concert', 10, 49)
items << identify_item.identify('Backstage passes to a TAFKAL80ETC concert', 5, 49)
items << identify_item.identify('Conjured Mana Cake', 3, 6)

days = 2
days = ARGV[0].to_i + 1 if ARGV.size > 0

gilded_rose = GildedRose.new items
(0...days).each do |day|
  puts "-------- day #{day} --------"
  puts 'name, sellIn, quality'
  items.each do |item|
    puts item
  end
  puts ''
  gilded_rose.update_quality
end
