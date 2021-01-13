require_relative "update_inventory"

class Sulfuras <UpdateInventory
  def update_quality
    if @quality != 80
      @quality = 80
    end
  end
end