class Track
  attr_accessor :track

  def initialize(track)
    @track = track
  end

  def set_price(x)
    discount = track[:price] - x
    discount.round(1)
  end

  def reset_discount
    track[:price] = 1.0
  end
end
