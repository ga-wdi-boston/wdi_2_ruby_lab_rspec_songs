class Album
  attr_accessor :title, :tracks, :duration, :price, :artists

  def initialize(title:, tracks:[], duration:, price:, artists:[])
    @title = title
    @tracks = tracks
    @duration = duration
    @price = price
    @artists = artists
  end

end
