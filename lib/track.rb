class Track
  attr_reader :title, :artist, :duration, :original_price, :num
  attr_accessor :price, :discount_amount

  def initialize(title, artist, duration, original_price)
    @title = title
    @artist = artist
    @duration = duration
    @original_price = original_price
    @discount_amount = 0
  end

  def set_discount(num)
    @discount_amount = num
  end

  def price
    if @discount_amount != 0
      original_price * (1.00 - @discount_amount)
    else
      original_price
    end
  end

  def reset
    @discount_amount = 0
    price
  end
end
