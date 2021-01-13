# frozen_string_literal: true

require_relative 'identify_item'

# class gilded rose
class GildedRose
  attr_reader :items

  def initialize(items)
    @items = items
  end

  def update_quality
    @items.each(&:stats)
  end
end
