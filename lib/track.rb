class Track

  attr_accessor :title, :artist, :duration, :price
  
  def initialize(title:, artist:, duration:, price:)
    @title = title
    @artist = artist
    @duration = duration
    @base_price = @price = price
    
  end

  def set_discount(discount)
    @price = (@base_price * (1 - discount)).round(2)
  end

  def reset_discount
    @price = @base_price.to_f
  end

end