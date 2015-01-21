require_relative './track'

class Album

attr_accessor :title, :tracks, :duration_total, :combined_price, :artists

  # def initialize(title,tracks,duration_total,combined_price,artists)
  def initialize(title:, tracks:, duration_total:, combined_price:, artists:)
    @title = title
    @tracks = tracks
    @duration_total = duration_total
    @combined_price = combined_price
    @artists = artists
  end

  def is_single?
    @tracks.count == 1
  end
end
