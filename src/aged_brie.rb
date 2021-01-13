require_relative 'update_inventory'

# Clase del articulo Aged brie
class AgedBrie < UpdateInventory
  def update_quality
    @quality += 1 if @quality < 50
  end
end
