require 'pry-byebug'
require_relative './album'
class Track

  attr_accessor :title, :artists, :duration, :price

  def initialize(title, artists, duration, price)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
    @original = price
  end

  def set_discount(discount)
    if discount > 1
      raise TrackError
    end
    self.price = (@original * discount).round(2)
  end

  def reset_discount
    self.price = @original
  end

  def to_dur
    arr = duration.split(':').map { |num| num.to_i}
    arr[0] + arr[1] / 60.0
  end

end

class TrackError < StandardError
end
