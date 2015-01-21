class Track

  attr_accessor :name, :artist, :duration, :price
  def initialize(name, artist, duration, price)
    unless name.is_a?(String) && artist.is_a?(String) && duration.is_a?(String) && price.is_a?(Float)
      raise ArgumentError.new("Please enter a valid track information")
    end
    @name = name
    @artist = artist
    @duration = duration
    @price = price
  end

  def reduce_price(percent_discount)
    unless percent_discount.is_a?(Float)
      raise ArgumentError.new("Please enter a valid discount")
    end
    @original_price =  @price
    @price *= (1 - percent_discount)
  end


  def reset_discount
    @price = @original_price
  end


end
