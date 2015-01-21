# require './track'
class Track
  attr_accessor :title, :artists, :duration, :price, :discount

  def initialize(title:, artists:, duration:, price:)
    @title = title
    @artists = artists
    @duration = duration
    @price = price
    @original_price = price
  end

  def set_discount(discount)
    @discount = 1 - discount
    @price *= @discount
    @price.round(2)
  end

  def reset_discount
    @price = @original_price
  end

end

class Album
  attr_accessor :title, :tracks
  def initialize(title:, tracks:)
    @title = title
    @tracks = tracks
    if @tracks.length == 0
      raise ArgumentError, "An album must have length."
    end
  end

  def duration
    @tracks.map {|track| track.duration.split(/:/).map(&:to_i)}.map! { |e| e[0] * 60 + e[1] }.inject(:+)
  end

  def total_price
    @tracks.map(&:price).inject(:+)
  end

  def list_of_artists
    @tracks.map(&:artists).uniq
  end

  def is_a_single?
    @tracks.length == 1
  end

end

#   @title= "My Mix Tape"
#   @songs = [
#     track_1 = Track.new(title: "Strawberry Fields", artists: "The Beatles", duration: "3:00", price: 1.00),
#     track_2 = Track.new(title: "I am the Walrus", artists: "The Beatles", duration: "4:50", price: 1.00),
#     track_3 = Track.new(title: "Ruby Tuesday", artists: "The Rolling Stones", duration: "4:00", price: 1.00)
#     ]
#     @album1 = Album.new(title: @title, tracks: @songs)

# p @album1.duration
