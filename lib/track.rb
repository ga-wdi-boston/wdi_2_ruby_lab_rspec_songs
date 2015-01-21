require 'pry-byebug'

class Track
  attr_accessor :title, :artists, :duration, :price, :discount

  def initialize(title:, artists:, duration:, price:)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
    @original_price = price
  end

  def set_discount(discount)
    @discount = 1 - discount
    @price *= @discount
    @price.round(2)
  end

  def reset_discount
    @price = @original_price
  end

end


