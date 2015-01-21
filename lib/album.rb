require 'pry-byebug'
require'track'

class Album

  attr_accessor :title, :tracks

  def initialize(title, tracks)
    unless title.is_a?(String) && tracks.length > 0
      raise ArgumentError.new("Please enter a valid title and tracks")
    end
    @title = title
    @tracks = tracks
  end

  def duration
    times = tracks.map{|track| track.duration.split(':')}
    minutes = times.map{|time| time[0].to_i}.inject(:+)
    seconds = times.map{|time| time[1].to_i}.inject(:+)
    seconds_to_minutes = seconds.divmod(60)
    total_minutes = minutes + seconds_to_minutes[0]
    total_seconds = seconds + seconds_to_minutes[1]
    time_array = []
    time_array << total_minutes << seconds_to_minutes[1]
    total_time = time_array.join(":")
    total_time.to_s
  end

  def price
    tracks.map{|track| track.price}.inject(:+).round(2)
  end

  def artists
    tracks.map {|track| track.artist}.uniq.sort.join(', ')
  end

  def is_a_single?
    tracks.length == 1
  end

end
