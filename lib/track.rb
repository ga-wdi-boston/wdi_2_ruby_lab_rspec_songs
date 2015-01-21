class Track
  def initialize(title, artists, duration, price)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
  end

  def title
    @title
  end

  def artists
    @artists
  end

  def duration
    @duration
  end

  def price
    @price
  end

  def set_discount(discount)
    @discount = discount
    @price = @price - @discount
    self
  end

  def reset_discount
    @price = @price + @discount
  end
end

