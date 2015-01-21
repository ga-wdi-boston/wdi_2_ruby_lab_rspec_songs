require 'pry-byebug'

class Track
  def initialize(title, artist, duration, price)
    @title = title
    @artist = artist
    @duration = duration
    @price = price
  end

  def price
    @price
  end

  def find_title
    @title
  end

  def set_discount(discount)
    @discounted_price = discount
    @price = @price - discount
  end

  def reset_discount
    @price + @discounted_price
  end

end

# local pry testing:
# track = Track.new("The Watchtower", "Jimi Hendrix", 4, 2.50)
# binding.pry
# track.class
