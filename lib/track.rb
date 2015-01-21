class Track

  def initialize(track)
    @track = track
  end

  def price
    @price
  end

  def set_discount(discount)
    convert_to_num = original_price.slice!('$').to_f
    #new_price = convert_to_num - convert_to_num * (discount.to_f / 100)
    #new_price = track.fetch(:price).to_f - track.fetch(:price).to_f * (discount.to_f / 100)
    #"$" + new_price.to_s
    #make sure when this is recalled that it shows the new price... perhaps .map!
  end

  def reset_discount
    '$' + original_price
  end

  private
  def track
    @track
  end

  def original_price
    @track.fetch(:price)
  end

end
