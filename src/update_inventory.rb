require_relative 'item.rb'

class UpdateInventory <Item
  def stats
    sell_in_stats
    update_quality
  end

  def update_quality
    if @sell_in >0
      @quality -= 1
    end

    if @sell_in<0
      @quality-=2
    end

    if @quality<0
      @quality=0
    end
    @quality = 50 if @quality >= 50
  end

  def sell_in_stats
    @sell_in-=1
  end
end