require_relative 'update_inventory'

class AgedBrie < UpdateInventory
  def update_quality
    if @quality < 50
      @quality += @sell_in.negative? ? 2 : 1
    end
  end
end
