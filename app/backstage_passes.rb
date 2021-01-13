require_relative 'update_inventory'

# clase del articulo backstage passes
class BackstagePasses < UpdateInventory
  def update_quality
    @quality += 1 if @sell_in > 10
    @quality += 2 if (@sell_in <= 10) && (@sell_in > 5)
    @quality += 3 if (@sell_in <= 5) && @sell_in.positive?
    @quality = 0 if sell_in <= 0
  end
end
