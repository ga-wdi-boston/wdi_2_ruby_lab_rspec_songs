require_relative '../lib/track'

class Album
  def initialize(title, tracks)
    @title = title
    @tracks = tracks
  end

  def duration
    @tracks.map { |track| track.duration}.inject(:+)
  end

  def price
    @tracks.map { |track| track.price}.inject(:+)
  end

  def artists
    @tracks.map { |track| track.artists}.flatten.uniq
  end

  def is_single?
    @tracks.count == 1
  end

end
