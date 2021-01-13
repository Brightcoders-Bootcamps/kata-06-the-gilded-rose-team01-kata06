# ...
require_relative 'identify_item'

# clase gilded rose
class GildedRose
  attr_reader :items

  @items = []

  def initialize
    @items = []
    identify_item = IdentifyItem.new
    @items << identify_item.identify('+5 Dexterity Vest', 10, 20)
    @items << identify_item.identify('Aged Brie', 2, 0)
    @items << identify_item.identify('Elixir of the Mongoose', 5, 7)
    @items << identify_item.identify('Sulfuras, Hand of Ragnaros', 0, 80)
    @items << identify_item.identify('Sulfuras, Hand of Ragnaros', -1, 80)
    @items << identify_item.identify('Backstage passes to a TAFKAL80ETC concert', 15, 20)
    @items << identify_item.identify('Backstage passes to a TAFKAL80ETC concert', 10, 49)
    @items << identify_item.identify('Backstage passes to a TAFKAL80ETC concert', 5, 49)
    @items << identify_item.identify('Conjured Mana Cake', 3, 6)
  end

  def update_quality
    @items.each do |item|
      item.stats
    end
  end
end
days = 15
gilded_rose = GildedRose.new
# puts gilded_rose.update_quality

days = ARGV[0].to_i + 1 if ARGV.size.positive?

(0...days).each do |day|
  puts "-------- day #{day} --------"
  puts 'name, sellIn, quality'
  puts gilded_rose.update_quality
  puts ''
  gilded_rose.update_quality
end

# require_relative 'item'
#
# class GildedRose
#
#   def initialize(items)
#     @items = items
#   end
#
#   def update_quality()
#     @items.each do |item|
#       if item.name != "Aged Brie" and item.name != "Backstage passes to a TAFKAL80ETC concert"
#         if item.quality > 0
#           if item.name != "Sulfuras, Hand of Ragnaros"
#             item.quality = item.quality - 1
#           end
#           if item.name == "Conjured Mana Cake"
#             item.quality = item.quality - 1
#           end
#         end
#       else
#         if item.quality < 50
#           item.quality = item.quality + 1
#           if item.name == "Backstage passes to a TAFKAL80ETC concert"
#             if item.sell_in < 11
#               if item.quality < 50
#                 item.quality = item.quality + 1
#               end
#             end
#             if item.sell_in < 6
#               if item.quality < 50
#                 item.quality = item.quality + 1
#               end
#             end
#           end
#         end
#       end
#       if item.name != "Sulfuras, Hand of Ragnaros"
#         item.sell_in = item.sell_in - 1
#       end
#       if item.sell_in < 0
#         if item.name != "Aged Brie"
#           if item.name != "Backstage passes to a TAFKAL80ETC concert"
#             if item.quality > 0
#               if item.name != "Sulfuras, Hand of Ragnaros"
#                 item.quality = item.quality - 1
#               end
#             end
#           else
#             item.quality = item.quality - item.quality
#           end
#         else
#           if item.quality < 50
#             item.quality = item.quality + 1
#           end
#         end
#       end
#     end
#   end
# end
#
# class Item
#   attr_accessor :name, :sell_in, :quality
#
#   def initialize(name, sell_in, quality)
#     @name = name
#     @sell_in = sell_in
#     @quality = quality
#   end
#
#   def to_s()
#     "#{@name}, #{@sell_in}, #{@quality}"
#   end
# end
# ...
