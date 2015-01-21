class Track

  def initialize(track, artists, duration, price)
    @track = track
    @artists = artists
    @duration = duration
    @price = price
  end

  def set_discount(discount)
    @discount = discount
    @price = @price - @discount
  end

  def reset_discount
    @price = @price + @discount.to_i
  end


end
