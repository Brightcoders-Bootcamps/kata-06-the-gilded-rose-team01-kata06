require_relative "update_inventory"

class Conjured <UpdateInventory
  def update_quality
    @quality -= 2
    if sell_in <= 0
      @quality-= 2
    end
  end
end