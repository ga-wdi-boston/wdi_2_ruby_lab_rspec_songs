class Album
  attr_reader :title, :song_list

  def initialize(title, song_list)
    @title = title
    @song_list = song_list
  end

  def runtime
    durations = song_list.map(&:duration)
    total = 0
    durations.each do |val|
      total += val
    end
    total
  end

  def album_price
    all_prices = song_list.map(&:price)
    total = 0
    all_prices.each do |price|
      total += price
    end
    total
  end

  def list_artists
    all_artists = song_list.map(&:artist)
    all_artists.uniq.sort
  end

  def is_a_single?
    song_list.length == 1
  end

end

