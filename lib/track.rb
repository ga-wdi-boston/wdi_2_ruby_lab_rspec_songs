class Track

attr_accessor : :title, :artists, :duration:, :original_price, :discounted_price


  def initialize(title, artists, duration, original_price, discounted_price)
    @title = title
    @artists = artists
    @duration = duration
    @original_price = original_price
    @discounted_price = discounted_price
  end

  def title
    @title
  end

  def artist
    @artist
  end

  def duration
    @duration
  end

  def original_price
    @original_price
  end

  def discounted_price()
    @discounted_price
  end


  def set_discount(percent)
    @discounted_price = @original_price - (@original_price * discount)
  end

  def reset_discount(percent)
    @discounted_price = @original_price
  end

end
