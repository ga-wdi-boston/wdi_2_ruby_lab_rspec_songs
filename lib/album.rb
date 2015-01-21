require_relative './track'
#include Track

class Album

  def initialize (album_title, track_info)
    @album_title = album_title
    @track_info = track_info
    # @title = track_info[:title]
    # @artist = track_info[:artist]
    # @duration = track_info[:duration]
    # @price = track_info[:price]
  end

  def track_list
    #binding byebug
    @track_info.map{|song| song.instance_variable_get(:@title)}
  end

  def total_duration
    #binding byebug
    @track_info.map{|song| song.instance_variable_get(:@duration)}.reduce(:+)
  end

end
