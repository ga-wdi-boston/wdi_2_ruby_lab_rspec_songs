class Track
  attr_accessor :track

  def initialize(track)
    @track = track
  end

  def set_price(x)
    track[:price] - x
  end

  def reset_discount
    track[:price] = 1.0
  end
end
