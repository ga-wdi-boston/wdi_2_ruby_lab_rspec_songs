require 'pry'
class Track

  attr_accessor :title, :artist, :duration, :price

  def initialize(title:, artist:, duration:, price:)
    @title = title
    @artist = artist
    @duration = duration
    @price = price
    @suggested_retail = price
  end

  def set_discount(discount)
    @price *= discount
  end

  def reset_discount
    @price = @suggested_retail
  end
end
