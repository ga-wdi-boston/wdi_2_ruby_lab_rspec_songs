require 'pry-byebug'
class Track
  attr_accessor :title, :artists, :price, :duration

  def initialize (title:, artists:, price:, duration:)
    @title = title
    @artists = artists
    @price = price
    @duration = duration
  end


  def set_discount(discount)
    #binding.pry
    @discount = discount
    @price *= (1- @discount)

  end

  # def discounted_price
  #   @price = set_discount
  # end

  def reset_discount(discount)
    @discount = (1 - discount)
    @price / @discount
  end

end


