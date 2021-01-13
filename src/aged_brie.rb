require_relative 'update_inventory'
class AgedBrie <UpdateInventory
  def update_quality
    if @quality < 50
      @quality += 1
    end
  end
end