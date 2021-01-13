require_relative "update_inventory"

class BackstagePasses <UpdateInventory
  def update_quality
    if @sell_in > 10
      @quality += 1
    end
    if @sell_in <= 10 and @sell_in > 5
      @quality += 2
    end
    if @sell_in <= 5 and @sell_in > 0
      @quality += 3
    end
    if sell_in <= 0
      @quality = 0
    end
  end
end