require_relative 'update_inventory'

class Sulfuras < UpdateInventory
  def update_quality
    @quality = 80 if @quality != 80
  end

  def sell_in_stats
    @sell_in
  end
end
