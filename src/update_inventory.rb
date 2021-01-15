require_relative 'item.rb'

# class update inventory
class UpdateInventory < Item
  def stats
    sell_in_stats
    update_quality
  end

  def update_quality
    if @sell_in > 0 then @quality -= 1 end
    if @sell_in < 0 then @quality -= 2 end
    if @quality < 0 then @quality = 0 end
    @quality = 50 if @sell_in >= 50
  end

  def sell_in_stats
    @sell_in -= 1
  end
end