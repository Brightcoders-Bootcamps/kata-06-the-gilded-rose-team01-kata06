# frozen_string_literal: true

require_relative 'item'
# class update inventory
class UpdateInventory < Item
  def stats
    sell_in_stats
    update_quality
  end

  def update_quality
    @quality -= @sell_in >= 0 ? 1 : 2
    @quality = 0 if @quality.negative?
    @quality = 50 if @quality >= 50
  end

  def sell_in_stats
    @sell_in -= 1
  end
end
