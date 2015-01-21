require 'byebug'
require 'pry'

class Track
  def initialize(track)
    @track = track
    track
  end
end

class Artist
  def initialize(artist)
    @artist = artist
  end
end

class Price
  def initialize(price)
    @price = price
  end
end

class Discount
  def iniialize(discount)
    @discount = discount
  end

  def set_discount
    @price % @discount = amount_to_subtract
    @price - amount_to_subtract == 0
  end

  def reset_discount
    @price
  end
end

