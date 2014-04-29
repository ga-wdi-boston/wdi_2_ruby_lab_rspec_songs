class Track
  attr_reader :title, :artist, :duration, :price

  def initialize(title, artist, duration, price)
    @title = title
    @artist = artist
    @duration = duration
    @price = price
  end

  def discount(amount)
    price * amount
  end

  def reset
    price
  end
end
