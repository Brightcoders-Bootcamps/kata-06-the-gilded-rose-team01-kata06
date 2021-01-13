# frozen_string_literal: true

require_relative 'update_inventory'
# class backstage passes
class BackstagePasses < UpdateInventory
  def update_quality
    @quality += if @sell_in > 10
                  1
                else
                  @sell_in > 5 ? 2 : 3
                end
    @quality = 50 if @quality > 50
    @quality = 0 if @sell_in <= 0
  end
end
