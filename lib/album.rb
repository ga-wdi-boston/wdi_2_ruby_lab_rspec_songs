class Album
  attr_accessor :album

  def initialize(album)
    @album = album
  end

  def duration
    durations = []
    durations << album[1][:duration]
    durations << album[2][:duration]
    durations << album[3][:duration]
    durations.inject(:+)
  end

  def price
    price = []
    price << album[1][:price]
    price << album[2][:price]
    price << album[3][:price]
    price.inject(:+)
  end

  def list_of_artists
    artists = []
    artists << album[1][:artist]
    artists << album[2][:artist]
    artists << album[3][:artist]
    artists.sort_by {|word| word.downcase}
  end

  def is_single?
    if album.length == 1
      true
    else
      false
    end
  end
end
