class Track

  attr_accessor :title, :artist, :duration, :price
  def initialize (info = {})
    @title = info[:title]
    @artist = info[:artist]
    @duration = info[:duration]
    @price = info[:price]
  end
  #Sets a discounted price for a track.
  def set_discount (percent)
   raise ArgumentError, 'Argument cannot exceed 100%' unless percent < 1.0

     @price = (@price - @price * percent).round(2)
  end
  #Restores a prices for a track, given it's originial discount.
  def restore_value(percent)
  raise ArgumentError, 'Argument cannot exceed 100%' unless percent < 1.0

    @price = (@price / (1 - percent)).round(2)
  end


end


