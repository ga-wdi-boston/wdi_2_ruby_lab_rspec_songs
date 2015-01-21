class Track

  def initialize(title, list_of_artists, duration, price)
    @track = {
            title: title,
            list_of_artists: list_of_artists,
            duration: duration,
            price: price
          }
    @original_price = track[:price]
    @discounted = false
  end

  def title
    @track[:title]
  end

  def list_of_artists
    @track[:list_of_artists]
  end

  def duration
    @track[:duration]
  end

  def price
    @track[:price]
  end

  #method that reduces the price by a given percentage
  def set_discount (percent_off)
    if @discounted == true
      reset_discount
       @track[:price] = (1.00 - percent_off) * @original_price
    else
      @original_price = @track[:price]
      @track[:price] = (1.00 - percent_off) * @original_price
      @discounted = true
    end
  end

  #method that restores the price to its original value
  def reset_discount
    @track[:price] = @original_price
  end



end
