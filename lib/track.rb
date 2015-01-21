class Track
  def initialize(music)
   @music = music
  end


#Turn this into a turnary
  def has_info
    if @music
      true
    else
      false
    end
    # self #=> you're returning an instance of the Track class here.
    # what you want to return is a boolean.
  end

  def set_discount(percentage)
    (100 - percentage)
    @music.map{|array| ((array[:price]) * percentage) / 1}
  end

  def reset_discount
    #come back to this ***
    @music.map{|array| (array[:price]) / 1}
  end

end
