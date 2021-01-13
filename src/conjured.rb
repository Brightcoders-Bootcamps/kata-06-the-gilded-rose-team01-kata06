require_relative 'update_inventory'

# clase del rticulo conjured
class Conjured < UpdateInventory
  def update_quality
    @quality -= 2
    @quality -= 2 if sell_in <= 0
  end
end
