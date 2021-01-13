# frozen_string_literal: true

require_relative 'update_inventory'
# class Aged brie
class AgedBrie < UpdateInventory
  def update_quality
    @quality += @sell_in.negative? ? 2 : 1
    return unless @quality < 50
  end
end
