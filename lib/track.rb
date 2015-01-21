class Track

# attr_accessor :name, :age, :gender, :years_language_experience, :favorite_foods
attr_accessor :title, :artist, :duration, :price

# def initialize(name:, age:, gender:, years_language_experience:{}, favorite_foods:[])

  def initialize(title:, artist:, duration:, price:)
    @title = title
    @artist = artist
    @duration = duration
    @price = price
    @original_price = price
  end

  # attr_accessor @title, @artist, duration, price


  def set_discount(discount)
    @discount = discount
    @price = @price - (@price * discount.to_f)
  end

  def discount
    @discount.to_f
  end

  def reset_discount
    @price = @original_price
  end

  def price
    @price
  end
end
