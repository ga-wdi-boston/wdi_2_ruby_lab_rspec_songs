require 'pry-byebug'

class Album
  def initialize(album_title, artists, total_duration, price)
    @album_title = album_title
    @artists = artists
    @total_duration = total_duration
    @price = price
  end

  def find_album_title
    @album_title
  end

end
