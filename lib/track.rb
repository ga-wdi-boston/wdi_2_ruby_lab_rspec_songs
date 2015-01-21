class Track

  #attr_accessor :title, :duration, :price
  def initialize (info = {})
    @title = info[:title]
    @artist = info[:artist]
    @duration = info[:duration]
    @price = info[:price]
  end

  def set_discount (percent)
   # binding.byebug
     @price = (@price - @price * percent).round(2)
  end

  def restore_value(percent)
  #  binding.byebug
     @price = (@price / (1 - percent)).round(2)
  end


end


