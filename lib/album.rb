class Album

  def initialize(title:, tracks:)
    @title = title
    @tracks = tracks
  end

  def duration
    (@tracks.map {|x| x.duration.split(/:/).map(&:to_i)}.map! {|y| y[0] * 60 + y[1] }.inject(:+))/ 60
  end

  def total_price
    @tracks.map {|x| x.price}.inject(&:+)
  end

  def list_of_artists
    @tracks.map {|x| x.artists}.flatten.uniq
  end

  def album_single?
   @tracks.length == 1
  end

end
