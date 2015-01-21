require_relative './track'
require 'pry-byebug'

class Album

  attr_accessor :title, :tracks

  def initialize(title, tracks)
    if tracks.length == 0
      raise AlbumError
    end
    @title = title
    @tracks = tracks
  end

  def duration
    time = tracks.inject(0) { |memo, song| memo += song.to_dur }
    deci_part = (time - time.floor).round(2)
    "#{time.floor}:#{(deci_part * 60).to_i}"
  end

  def price
    tracks.inject(0) { |memo, song| memo += song.price }.round(2)
  end

  def artist_list
    tracks.flat_map {|track| track.artists}.uniq.sort
  end

  def single?
    tracks.length == 1
  end

end

class AlbumError < StandardError
end

#Album.new("Hi", [])
