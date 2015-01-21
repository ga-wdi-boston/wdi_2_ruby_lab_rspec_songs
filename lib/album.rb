class Album

  def initialize(album)
    @album = album
  end

  def price
    @price
  end

  def set_discount(discount)
    # add '$' and remove from string
    new_price = album.fetch(:price).to_f - album.fetch(:price).to_f * (discount.to_f / 100)
    #make sure when this is recalled that it shows the new price... perhaps .map!
  end

  def reset_discount
    original_price
  end

  private
  def album
    @album
  end

  def original_price
    @album.fetch(:price)
  end

end
