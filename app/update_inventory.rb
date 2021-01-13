require_relative 'item'

# actualiza el inventario
class UpdateInventory < Item
  def stats
    sell_in_stats
    update_quality
  end

  def update_quality
    @quality -= 1 if @sell_in.positive?
    @quality -= 2 if @sell_in.negative?
    @quality = 0 if @quality.negative?
    @quality = 50 if @quality >= 50
  end

  def sell_in_stats
    @sell_in -= 0
  end
end
