# frozen_string_literal: true

require_relative 'update_inventory'
# class sulfuras
class Sulfuras < UpdateInventory
  def update_quality
    @quality = 80 if @quality != 80
  end

  def sell_in_stats
    @sell_in
  end
end
