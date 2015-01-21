require_relative './track.rb'

class Album < Track

  attr_reader :track_info
  def initialize (album_title, track_info)
    raise ArgumentError, 'Must have at least 1 track' unless track_info.length > 0

    @album_title = album_title
    @track_info = track_info
  end

  def track_list
   # binding byebug
    track_info.map(&:title)
  end

  def total_duration
    track_info.map(&:duration).reduce(:+)
  end

  def total_price
    track_info.map(&:price).reduce(:+)
  end

  def all_artists
    track_info.map{|song| song.artist.split(",")}.flatten.uniq
  end

  def single_track?
    track_info.length == 1
  end

end
