class Track
attr_accessor :title, :artists, :duration, :original_price, :current_price

  def initialize(title, artists, duration, original_price, current_price)
    @title = title
    @artists = artists
    @duration = duration
    @original_price = original_price
    @current_price = current_price
  end

  def set_discount(discount)
    @current_price = @original_price - (@original_price * discount)
  end

  def reset_discount
    @current_price = @original_price
  end

end


class Album
attr_accessor :title, :tracks, :artists, :duration, :price

  def initialize(title, tracks, artists, duration, price)
    @title = title
    @tracks = tracks
    @artists = artists
    @duration = duration
    @price = price
  end

  def is_a_single?
    @tracks.length == 1
  end

end
