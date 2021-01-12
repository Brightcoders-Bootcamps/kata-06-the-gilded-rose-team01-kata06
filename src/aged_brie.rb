require_relative 'gilded_rose'

class AgedBrie < Item
  def initialize(name, sell_in, quality)
    super(name, sell_in, quality)
  end

  def update
    if @quality <= 50
      @quality += @sell_in.negative? ? 2 : 1
    end
    @sell_in -= 1
  end
end
