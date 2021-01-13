require_relative 'update_inventory'

class Conjured < UpdateInventory
  def update_quality
    @quality -= sell_in <= 0 ? 4 : 2
    @quality = 0 if @quality < 0
  end
end
