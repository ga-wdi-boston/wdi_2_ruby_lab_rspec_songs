class Album

  def initialize(songs)
   @songs = songs
  end

  def has_keys
    @songs.flat_map{|hash| hash.keys}.uniq
  end

  def price_total
    @songs.map{|hash| hash.map{|key| key.to_i}
    }
  end

end
