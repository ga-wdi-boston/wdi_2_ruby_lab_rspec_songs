require 'pry'
require 'byebug'

class Track
  attr_accessor :price, :regular_price

  def initialize(title, list_of_artists, duration, price)
    @title = title
    @list_of_artists = list_of_artists
    @duration = duration
    @price = price
  end

  def set_discount(percentage)
    @regular_price = @price
    @price = @regular_price - (@regular_price * percentage)
  end

  def reset_discount
    @price = @regular_price.to_f
  end

end
