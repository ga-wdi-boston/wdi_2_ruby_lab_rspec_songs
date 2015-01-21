class Track
  attr_accessor :title, :artists, :duration, :price

  def initialize(title:, artists:[], duration:, price:)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
    @initial_price = price
  end

  def price
    @price
  end

  def set_discount(x)
    unless x <= 0 || x >= 1
      @price *= 1 - x
    # else
    #   raise(ArgumentError)
    #  test doesn't work yet
    end
  end

  def reset_discount
    @price = @initial_price
  end
end
