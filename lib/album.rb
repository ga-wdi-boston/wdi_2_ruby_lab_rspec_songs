require_relative './track.rb'

class Album

  attr_accessor :tracks
  def initialize (album_title, tracks)
    # raise ArgumentError, 'Must have at least 1 track' unless tracks.length > 0

    @album_title = album_title
    @tracks = tracks
   # binding byebug
  end

  def track_list
    #binding byebug
    tracks.map!(&:title)
  end

  def total_duration
    tracks.map(&:duration).reduce(:+)
  end

  def total_price
    tracks.map(&:price).reduce(:+)
  end

  def all_artists
    tracks.map{|song| song.artist.split(",")}.flatten.uniq
  end

  def single_track?
    tracks.length == 1
  end

end
