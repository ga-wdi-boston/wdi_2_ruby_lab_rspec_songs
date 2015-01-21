require_relative './track.rb'

class Album

  attr_accessor :tracks
  def initialize (album_title, tracks)
    raise ArgumentError, 'Must have at least 1 track' unless tracks.length > 0

    @album_title = album_title
    @tracks = tracks
  end
  #Returns a complete list of album tracks.
  def track_list
    tracks.map!(&:title)
  end
  #Returns a album length in seconds.
  def total_duration
    tracks.map(&:duration).reduce(:+)
  end
  #Total price of album.
  def total_price
    tracks.map(&:price).reduce(:+)
  end
  #Total list of artist (unique).
  def all_artists
    tracks.map{|song| song.artist.split(",")}.flatten.uniq
  end
  #Ensures the album is at least 1 track.""
  def single_track?
    tracks.length == 1
  end

end
