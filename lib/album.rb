class Album
  attr_accessor :title, :tracks, :duration, :price, :artists

  def initialize(title:, tracks:[], duration:, price:, artists:[])
    @title = title
    @tracks = tracks
    @duration = duration
    @price = price
    @artists = artists
    # if tracks.length == 0
    #   raise(ArgumentError)
    # end
    # no test yet
  end

  def single?
    tracks.length == 1
  end

end
